#!/bin/bash
MINISHIFT_VER="1.34.2"
echo "Downloading the minishift tgz. VERSION: ${MINISHIFT_VER}"
curl -L https://github.com/minishift/minishift/releases/download/v$MINISHIFT_VER/minishift-$MINISHIFT_VER-linux-amd64.tgz -o ./minishift.tgz
echo "Extracting..."
tar -xvf minishift.tgz
echo "Adding to path"
sudo mv ./minishift-$MINISHIFT_VER-linux-amd64/minishift /usr/local/bin
echo "Adding auto-completion to bash"
minishift completion bash > ~/.minishift-completion
source ~/.minishift-completion
