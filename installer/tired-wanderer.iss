; Inno Setup script for the Windows installer.
; Build: iscc /DAppVersion=1.0.0 /DSourceExe=path\to\TiredWanderer.exe installer\tired-wanderer.iss

#ifndef AppVersion
  #define AppVersion "1.0.0"
#endif
#ifndef SourceExe
  #define SourceExe "..\build\windows\TiredWanderer.exe"
#endif

#define AppName "Усталый путник"
#define AppPublisher "tiredtravelergames"
#define AppUrl "https://tiredtravelergames.github.io/tired-wanderer/"
#define AppExe "TiredWanderer.exe"

[Setup]
AppId={{D7A1A2D5-45F3-4E34-BCB1-BBBC800BC41E}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppUrl}
AppSupportURL=https://github.com/tiredtravelergames/tired-wanderer/issues
AppUpdatesURL=https://github.com/tiredtravelergames/tired-wanderer/releases
DefaultDirName={autopf}\Tired Wanderer
DefaultGroupName={#AppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputBaseFilename=TiredWanderer-Setup
OutputDir=..\build
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\{#AppExe}
UninstallDisplayName={#AppName}
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
VersionInfoVersion={#AppVersion}.0
VersionInfoProductName={#AppName}

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "{#SourceExe}"; DestDir: "{app}"; DestName: "{#AppExe}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExe}"
Name: "{group}\{cm:UninstallProgram,{#AppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExe}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExe}"; Description: "{cm:LaunchProgram,{#AppName}}"; Flags: nowait postinstall skipifsilent
