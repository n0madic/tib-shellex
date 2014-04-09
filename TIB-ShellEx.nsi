!include x64.nsh
OutFile TIB-ShellEx-11.5.38573.exe

Name "Acronis Shell Extension only"
BrandingText ":: Nomadic ::"

CRCCheck on
SetOverwrite ifnewer
ShowInstDetails show

DirText "Based on Acronis Backup v11.5.38573"

Page directory
Page components
Page instfiles

Var InstDir32
Var InstDir64

Section "!Required files" required_id
	WriteRegStr HKEY_CLASSES_ROOT ".tib" "" "tibfile"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile" "" "Acronis True Image Backup Archive"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\CLSID" "" "{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\DefaultIcon" "" "$INSTDIR\tishell_abr.dll,0"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell" "" ""
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open" "" ""
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\command" "" "explorer /idlist,%I,%L"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\ddeexec" "NoActivateHandler" ""
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\ddeexec" "" "[ViewFolder($\"%l$\", %I, %S)]"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\ddeexec\application" "" "Folders"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\ddeexec\ifexec" "" "[]"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\Shell\open\ddeexec\topic" "" "AppProperties"
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\ShellEx" "" ""
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\ShellEx\ContextMenuHandlers" "" ""
	WriteRegStr HKEY_CLASSES_ROOT "tibfile\ShellEx\ContextMenuHandlers\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" ""
	${If} ${RunningX64}
		DetailPrint "Installer running on 64-bit host"
		; disable registry redirection (enable access to 64-bit portion of registry)
		SetRegView 64
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64.dll"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64.dll"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegDWORD HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_svr64.dll"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64.dll"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis Backup and Recovery 10 Shell Context Menu Extension"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_abr.dll"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis Backup and Recovery 10 Shell Extension"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_abr.dll"
		WriteRegDWORD HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32.dll"
		WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
		WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
		StrCpy $InstDir64 $InstDir
		SetOutPath $InstDir64
		File x64\icu38.dll
		File x64\icudt38.dll
		File x64\libcrypto10.dll
		File x64\libssl10.dll
		File x64\resource.dll
		File x64\thread_pool.dll
		File x32\tishell_abr.dll
		File x64\tishell_svr64.dll
		File x32\tishell32.dll
		File x64\tishell64.dll
		WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents" "icu38.dll" "$INSTDIR\icu38.dll"
		WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents" "libcrypto10.dll" "$INSTDIR\libcrypto10.dll"
		WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents" "libssl10.dll" "$INSTDIR\libssl10.dll"
		WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents" "resource.dll" "$INSTDIR\resource.dll"
		WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents" "thread_pool.dll" "$INSTDIR\thread_pool.dll"
	${Else}
		DetailPrint "Installer running on 32-bit host"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_abr.dll"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis Backup and Recovery 10 Shell Extension"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_abr.dll"
		WriteRegDWORD HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
		WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32.dll"
		StrCpy $InstDir32 $InstDir
		SetOutPath $InstDir32
		File x32\icu38.dll
		File x32\icudt38.dll
		File x32\libcrypto10.dll
		File x32\libssl10.dll
		File x32\resource.dll
		File x32\thread_pool.dll
		File x32\tishell_abr.dll
		File x32\tishell32.dll
	${EndIf}
	WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents" "icu38.dll" "$INSTDIR\icu38.dll"
	WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents" "libcrypto10.dll" "$INSTDIR\libcrypto10.dll"
	WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents" "libssl10.dll" "$INSTDIR\libssl10.dll"
	WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents" "resource.dll" "$INSTDIR\resource.dll"
	WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents" "thread_pool.dll" "$INSTDIR\thread_pool.dll"
SectionEnd

Section "MS Visual C++ 2005 CRT files"
	${If} ${RunningX64}
		File x64\msvcp80.dll
		File x64\msvcr80.dll
	${Else}
		File x32\Microsoft.VC80.CRT.manifest
		File x32\msvcp80.dll
		File x32\msvcr80.dll
	${EndIf}
SectionEnd

Section "Write Uninstaller"
	WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "UninstallString" '"$INSTDIR\TIB-uninst.exe"'
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "DisplayName" "Acronis Shell Extension (Remove Only)"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "DisplayIcon" '"$INSTDIR\TIB-uninst.exe"'
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "NoModify" "1"
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "NoRepair" "1"
	WriteUninstaller $INSTDIR\TIB-uninst.exe
SectionEnd

Section # Final
	System::Call "shell32::SHChangeNotify(i, i, i, i) v (0x08000000, 0, 0, 0)"
	DetailPrint "If doesn't work - reload explorer.exe !!!"	
SectionEnd

Section "Uninstall"
	${If} ${RunningX64}
		SetRegView 64
	${EndIf}
	RMDir /r /REBOOTOK "$INSTDIR"
	DeleteRegKey HKEY_CLASSES_ROOT ".tib"
	DeleteRegKey HKEY_CLASSES_ROOT "tibfile"
	DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "Wow6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}"
	DeleteRegKey HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
	DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\BackupAndRecovery\CommonComponents"
	DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Wow6432Node\Acronis\BackupAndRecovery\CommonComponents"
	DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension"
	System::Call "shell32::SHChangeNotify(i, i, i, i) v (0x08000000, 0, 0, 0)"
SectionEnd

Function .onInit
	ReadRegStr $R0 HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" ""
	IfFileExists $R0 +1 NotInstalled
		messageBox MB_OK|MB_ICONSTOP "Acronis Shell Extension already installed!"
		Quit
	NotInstalled:

	# set required section as selected and read-only
	IntOp $0 ${SF_SELECTED} | ${SF_RO}
	SectionSetFlags ${required_id} $0

	${If} ${RunningX64}
		${EnableX64FSRedirection}
		StrCpy $InstDir "$PROGRAMFILES64\Acronis\TIB ShellEx"
	${Else}
		StrCpy $InstDir "$PROGRAMFILES\Acronis\TIB ShellEx"
	${EndIf}
FunctionEnd
