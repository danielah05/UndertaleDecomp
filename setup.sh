#!/bin/bash
set -e

utmtVer="0.8.2.0"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    utmtZip="UTMT_CLI_v$utmtVer-Ubuntu"
    utmtZip256sum="0f25d1f44232afe4195fd11bd948ac50520f8907b75adbd2f37bd22ff1ed73f8"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    utmtZip="UTMT_CLI_v$utmtVer-macOS"
    utmtZip256sum="d385159c6570f0cd0e47fced9791f8a5b491348ca89b13d2e120b3a8c99b3e85"
else
    echo "Unsupported operating system!"
    exit 1
fi

downloadzip() {
    wget -P utils/ "https://github.com/UnderminersTeam/UndertaleModTool/releases/download/$utmtVer/$utmtZip.zip"
}

extractzip() {
    unzip "utils/$utmtZip.zip" -d "utils/$utmtZip"
    rm "utils/$utmtZip.zip"
    chmod +x "utils/$utmtZip/UndertaleModCli"
}

assetimport() {
    echo -n "Enter direct path of data.win: "
    read datafilepath

    cd "utils/$utmtZip/"
    ./UndertaleModCli load "$datafilepath" -s ../asset_importer/UndertaleDecompAssetImport.csx

    exit
}

# if cli folder already exists, just run assetimport
if [ -d "utils/$utmtZip" ]; then
    # TODO: some sort of file check here to make sure the copy is valid
    assetimport;
# if it does not exist, do zip stuff
else
    # check if zip already exists
    if [ -e "utils/$utmtZip.zip" ]; then
        # if zip exists but the checksum is invalid, redownload it
        if ! echo "$utmtZip256sum utils/$utmtZip.zip" | sha256sum -c -; then
            echo "redownloading zip..."
            rm "utils/$utmtZip.zip"
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
