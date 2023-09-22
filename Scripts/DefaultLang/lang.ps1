Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name ConsoleUtils -Namespace WPIA -MemberDefinition @'
   [DllImport("Kernel32.dll")]
   public static extern IntPtr GetConsoleWindow();
   [DllImport("user32.dll")]
   public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'@

# Hide Powershell window
$hWnd = [WPIA.ConsoleUtils]::GetConsoleWindow()
[WPIA.ConsoleUtils]::ShowWindow($hWnd, 0)

Clear-Host

$plusOrMinus = 1 # Mouse position increment or decrement
$WShell = New-Object -com "Wscript.Shell"

$sleep = 490 # Seconds
$index = 0
while ($true)
{

  $hrHr = New-WinUserLanguageList hr-HR
  $enUs = New-WinUserLanguageList en-US

  $LangList = $enUs[0], $hrHr[0]
  Set-WinUserLanguageList -LanguageList $LangList -Force
  
  # Sleep
  Start-Sleep -Seconds $sleep	
}