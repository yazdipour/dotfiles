# This PowerShell script will prevent your computer from going to sleep by randomly moving the mouse and pressing the Shift key.
# Just run it and enjoy your remote working time at home!

$idleTimeThreshold = 60 # Idle time threshold in seconds
$sleepTime = $idleTimeThreshold / 10 # Sleep time as 1/10th of idle time threshold

if (-not ([System.Management.Automation.PSTypeName]'DoNotSleep').Type) {
    Add-Type @"
        using System;
        using System.Runtime.InteropServices;

        public class DoNotSleep {
            [DllImport("user32.dll")]
            public static extern bool SetCursorPos(int X, int Y);

            [DllImport("user32.dll")]
            public static extern bool GetLastInputInfo(ref LASTINPUTINFO plii);

            [DllImport("user32.dll", SetLastError = true)]
            public static extern uint SendInput(uint nInputs, ref INPUT pInputs, int cbSize);

            [DllImport("user32.dll")]
            public static extern IntPtr GetDC(IntPtr hwnd);

            [DllImport("user32.dll")]
            public static extern int ReleaseDC(IntPtr hwnd, IntPtr dc);

            [DllImport("gdi32.dll")]
            public static extern int GetDeviceCaps(IntPtr hdc, int nIndex);

            private const int DESKTOPVERTRES = 117;
            private const int DESKTOPHORZRES = 118;

            public struct LASTINPUTINFO {
                public uint cbSize;
                public uint dwTime;
            }

            public struct INPUT {
                public int type;
                public INPUTUNION u;
            }

            [StructLayout(LayoutKind.Explicit)]
            public struct INPUTUNION {
                [FieldOffset(0)]
                public MOUSEINPUT mi;
                [FieldOffset(0)]
                public KEYBDINPUT ki;
                [FieldOffset(0)]
                public HARDWAREINPUT hi;
            }

            public struct MOUSEINPUT {
                public int dx;
                public int dy;
                public uint mouseData;
                public uint dwFlags;
                public uint time;
                public IntPtr dwExtraInfo;
            }

            public struct KEYBDINPUT {
                public ushort wVk;
                public ushort wScan;
                public uint dwFlags;
                public uint time;
                public IntPtr dwExtraInfo;
            }

            public struct HARDWAREINPUT {
                public uint uMsg;
                public ushort wParamL;
                public ushort wParamH;
            }

            public static uint GetIdleTime() {
                LASTINPUTINFO lastInputInfo = new LASTINPUTINFO();
                lastInputInfo.cbSize = (uint)Marshal.SizeOf(lastInputInfo);
                GetLastInputInfo(ref lastInputInfo);

                uint idleTime = ((uint)Environment.TickCount - lastInputInfo.dwTime);
                return idleTime / 1000;
            }

            public static void RandomMoveMouse() {
                Random rnd = new Random();
                IntPtr desktopPtr = GetDC(IntPtr.Zero);
                int screenWidth = GetDeviceCaps(desktopPtr, DESKTOPHORZRES);
                int screenHeight = GetDeviceCaps(desktopPtr, DESKTOPVERTRES);
                ReleaseDC(IntPtr.Zero, desktopPtr);

                int x = rnd.Next(screenWidth);
                int y = rnd.Next(screenHeight);
                SetCursorPos(x, y);
                Console.WriteLine("Mouse moved to position ({0}, {1})", x, y);
            }

            public static void SimulateKeyPress() {
                INPUT input = new INPUT();
                input.type = 1; // Keyboard input
                input.u.ki.wVk = 0x10; // Virtual-Key code for the Shift key

                // Key down
                input.u.ki.dwFlags = 0;
                SendInput(1, ref input, Marshal.SizeOf(input));
                Console.WriteLine("Key down (Shift)");

                // Key up
                input.u.ki.dwFlags = 2; // KEYEVENTF_KEYUP
                SendInput(1, ref input, Marshal.SizeOf(input));
                Console.WriteLine("Key up (Shift)");
            }
        }
"@
}

Write-Host "Do Not Sleep!"
while ($true) {
    Start-Sleep -Seconds $sleepTime

    $idleTime = [DoNotSleep]::GetIdleTime()
    if ($idleTime -gt $idleTimeThreshold) {
        Write-Host "You are idle for more than $idleTimeThreshold seconds"
        [DoNotSleep]::RandomMoveMouse() # Move mouse to a random location
        [DoNotSleep]::SimulateKeyPress() # Simulate a key press to prevent sleep/lock
    }
}
