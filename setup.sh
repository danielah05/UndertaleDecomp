#!/bin/bash
set -e

utmtVer="0.8.2.0"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    utmtZip="UTMT_CLI_v$utmtVer-Ubuntu"
    utmtZip256sum="0f25d1f44232afe4195fd11bd948ac50520f8907b75adbd2f37bd22ff1ed73f8"
    utmtCLI256sum="5b0f5f0a057e34d9c300b7d6b0978280edaa70a42eaf578794bf30419f6bf34e"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    utmtZip="UTMT_CLI_v$utmtVer-macOS"
    utmtZip256sum="d385159c6570f0cd0e47fced9791f8a5b491348ca89b13d2e120b3a8c99b3e85"
    utmtCLI256sum="b924e5f31c459ac88836e87d6efd620fee0038d0fa6e5a328a6d647f952b3892"
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

zipverify() {
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
}

# if cli folder already exists, just run assetimport
if [ -d "utils/$utmtZip" ]; then
    # if utmt cli exists but checksum is invalid, redownload it
    if ! echo "$utmtCLI256sum utils/$utmtZip/UndertaleModCli" | sha256sum -c -; then
        echo "redownloading cli..."
        rm -rf "utils/$utmtZip"
        zipverify;
        extractzip;
        assetimport;
    # if checksum matches its all good
    else
        assetimport;
    fi
# if it does not exist, do zip stuff
else
    zipverify;
fi
