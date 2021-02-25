HELMFILE_VERSION=v0.20.0
HELMFILE_DOWNLOADED_FILENAME=helmfile_linux_amd64
HURL=https://github.com/roboll/helmfile/releases/download
HELMFILE_URL=${HURL}/${HELMFILE_VERSION}/${HELMFILE_DOWNLOADED_FILENAME}
HELMFILE_BIN=helmfile

function install_helmfile {

    if [ -z $(which $HELMFILE_BIN) ]
       then
           wget ${HELMFILE_URL}
           chmod +x ${HELMFILE_DOWNLOADED_FILENAME}
           sudo mv ${HELMFILE_DOWNLOADED_FILENAME} /usr/local/bin/${HELMFILE_BIN}
           echo -e "\nexecuting: which ${HELMFILE_BIN}"
           which ${HELMFILE_BIN}
    else
       echo "Helmfile is most likely installed"
    fi

}