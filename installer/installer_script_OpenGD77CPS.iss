; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OpenGD77 CPS"
#define MyAppVersion " D2021.04.11.02"
#define MyAppURL "https://github.com/rogerclarkmelbourne/OpenGD77CPS"
#define MyAppExeName "OpenGD77CPS.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68542C1D-33BC-4EE4-80E0-D40A1A1486D3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\OpenGD77CPS
CreateAppDir=yes
DisableProgramGroupPage=yes
OutputDir=..\installer
OutputBaseFilename=OpenGD77CPSInstaller
Compression=zip
SolidCompression=yes  
UsePreviousAppDir=no
UsePreviousSetupType=no

[Types]
Name: "normal"; Description: "Normal installation"
Name: "portable"; Description: "Portable installation"

; Components are used inside the script and can be composed of a set of 'Types'
[Components]
Name: "normal";     Description: "Normal installation.";   Types: normal
Name: "portable";   Description: "Portable installation. This will run from a memory stick and uses an ini file to store defaults etc";   Types: portable

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\ReleaseOpenGD77\OpenGD77CPS.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\DefaultOpenGD77.g77"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\DockPanel.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\help.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Setup.ini"; DestDir: "{app}";  Components: portable; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\Tone.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\WeifenLuo.WinFormsUI.Docking.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\ReleaseOpenGD77\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Language\English.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\English.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\French.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\German.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\German.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Polski.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Portuguese.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Slovenian.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Spanish.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\SpanishCatalan.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Ukrainian.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Ukrainian.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Chinese.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Chinese.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Japanese.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Czech.xml"; DestDir: "{app}\Language"; Flags: ignoreversion

Source: "..\OpenGD77CommDriver\wdi-simple.exe"; DestDir: "{%TEMP}\OpenGD77CommDriver"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{%TEMP}\OpenGD77CommDriver\wdi-simple.exe"; Parameters: --vid 0x01FC9 --pid 0x0094 --type 3 --name OpenGD77; Description: "Install OpenGD77 Comm port driver"; Flags: runascurrentuser  nowait postinstall skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent