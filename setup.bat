@echo off

cd utils

:: fun fact this was supposed to have a checksum check just like the .sh but fuck batch i could not get it to work well at all n i dont wanna bother with powershell

if exist UTMT_CLI_Windows (
	goto :assetimport
) else (
	if exist UTMT_CLI_v0.8.2.0-Windows.zip (
		call :extractzip
		goto :assetimport
	) else (
		call :downloadzip
		call :extractzip
		goto :assetimport
	)
)
exit

:downloadzip
	echo Downloading UTMT CLI v0.8.2.0...
	curl -L -O https://github.com/UnderminersTeam/UndertaleModTool/releases/download/0.8.2.0/UTMT_CLI_v0.8.2.0-Windows.zip
EXIT /B 0

:extractzip
	mkdir UTMT_CLI_Windows
	echo Extracting UTMT_CLI_v0.8.2.0-Windows.zip...
	tar -xf UTMT_CLI_v0.8.2.0-Windows.zip -C UTMT_CLI_Windows
	del UTMT_CLI_v0.8.2.0-Windows.zip
EXIT /B 0

:assetimport
	set /P "datafilepath=Enter direct path of data.win: "

	cd UTMT_CLI_Windows
	UndertaleModCli.exe load "%datafilepath%" -s "../asset_importer/UndertaleDecompAssetImport.csx"
	pause
EXIT /B 0
