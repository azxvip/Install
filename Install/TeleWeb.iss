; -- TeleWeb for MTK Platform --

; TeleWeb for MTK Platform installation Script file
; Create on Inno Setup Compiler 5.1.6

[Setup]
AppName=TeleWeb MTK_SP
AppVerName=TeleWeb MTK_SP
DefaultDirName={pf}\TeleWeb MTK_SP 3.4.7
DefaultGroupName=TeleWeb MTK_SP 3.4.7
UninstallDisplayIcon={app}\TeleWeb.exe
SetupIconFile=orange_i.ico
WizardImageFile=orange.bmp
WizardSmallImageFile=orange_s.bmp
VersionInfoCompany=TCL Communication Technology Holdings Limited
VersionInfoCopyright=Copyright (C) 2006-2010 TCT Mobile
VersionInfoDescription=TeleWeb for MTK SP Platform
VersionInfoVersion=3.4.7.0
UsePreviousAppDir=no
UsePreviousGroup=no
OutputBaseFilename = TeleWeb MTK_SP 3.4.7 Setup
AppId=TeleWeb for MTK SP Platform

[Files]
Source: "..\EXE\TeleWeb.exe"; DestDir: "{app}"
Source: "..\EXE\*"; DestDir: "{app}"


; Flags: isreadme

[Icons]
Name: "{group}\TeleWeb MTK_SP 3.4.7"; Filename: "{app}\TeleWeb.exe"
Name: "{group}\LiveUpdate"; Filename: "{app}\LiveUpdate.exe"
Name: "{group}\TeleWeb User Manual"; Filename: "{app}\TeleWeb.chm"
Name: "{group}\Readme"; Filename: "{app}\Readme.htm"
Name: "{group}\Uninstall TeleWeb"; Filename: "{uninstallexe}"
Name: "{userdesktop}\TeleWeb MTK_SP 3.4.7"; Filename: "{app}\TeleWeb.exe"

[Registry]
; Start "Software\My Company\My Program" keys under HKEY_CURRENT_USER
; and HKEY_LOCAL_MACHINE. The flags tell it to always delete the
; "My Program" keys upon uninstall, and delete the "My Company" keys
; if there is nothing left in them.
Root: HKCU; Subkey: "Software\TeleWeb MTK_SP"; Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\TeleWeb MTK_SP\My Program"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\JRDC"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\JRDC\TeleWeb MTK_SP"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\JRDC\TeleWeb MTK_SP\Settings"; ValueType: string; ValueName: "Path"; ValueData: "{app}"

[Run]
;Filename: "{app}\Readme.htm"; Description: "View the README file"; Flags: postinstall shellexec skipifsilent
;Filename: "{app}\TeleWeb.EXE"; Description: "Launch TeleWeb"; Flags: postinstall shellexec

