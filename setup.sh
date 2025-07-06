#!/bin/bash

# UTMT_CLI_v0.8.2.0-Ubuntu.zip sha256sum
ubuntuZip256sum="0f25d1f44232afe4195fd11bd948ac50520f8907b75adbd2f37bd22ff1ed73f8"

downloadzip() {
    wget -P utils/ https://github.com/UnderminersTeam/UndertaleModTool/releases/download/0.8.2.0/UTMT_CLI_v0.8.2.0-Ubuntu.zip
}

extractzip() {
    unzip utils/UTMT_CLI_v0.8.2.0-Ubuntu.zip -d utils/UTMT_CLI_Ubuntu
    rm utils/UTMT_CLI_v0.8.2.0-Ubuntu.zip
    chmod +x utils/UTMT_CLI_Ubuntu/UndertaleModCli
}

assetimport() {
    echo -n "Enter direct path of data.win: "
    read datafilepath

    cd utils/UTMT_CLI_Ubuntu/
    ./UndertaleModCli load "$datafilepath" -s ../asset_importer/UndertaleDecompAssetImport.csx

    exit
}

# if cli folder already exists, just run assetimport
if [ -d "utils/UTMT_CLI_Ubuntu" ]; then
    # TODO: some sort of file check here to make sure the copy is valid
    assetimport;
# if it does not exist, do zip stuff
else
    # check if zip already exists
    if [ -e "utils/UTMT_CLI_v0.8.2.0-Ubuntu.zip" ]; then
        # if zip exists but the checksum is invalid, redownload it
        if ! echo "$ubuntuZip256sum utils/UTMT_CLI_v0.8.2.0-Ubuntu.zip" | sha256sum -c -; then
            echo "redownloading zip..."
            rm utils/UTMT_CLI_v0.8.2.0-Ubuntu.zip
            downloadzip;
            extractzip;
            assetimport;
        # if it exists and the checksum is fine, skip redownloading it
        else
            extractzip;
            assetimport;
        fi
    # if zip does not exist, download, extract, and run assetimport
    else
        downloadzip;
        extractzip;
        assetimport;
    fi
fi
