#!/bin/bash

GITHUB_USER="username"
GITHUB_PASS="password"
GITHUB_PROJ="cdp-cdp/compute-engine-vmss"

cdp_USER="cdp"
cdp_HOME_DIR="/home/${cdp_USER}"
cdp_LOG_DIR="/var/log/${cdp_USER}"

GO_DIR="${cdp_HOME_DIR}/go"

COMPUTE_BIN_DIR="${cdp_HOME_DIR}/compute"
COMPUTE_SRC_DIR="${cdp_HOME_DIR}/compute-engine-vmss"

mkdir -p ${COMPUTE_BIN_DIR} && mkdir -p ${COMPUTE_SRC_DIR} && mkdir -p ${GO_DIR}
mkdir -p ${cdp_LOG_DIR}

export GOPATH="${GO_DIR}"
/usr/local/go/bin/go get github.com/koding/kite

git clone https://${GITHUB_USER}:${GITHUB_PASS}@github.com/${GITHUB_PROJ}.git ${COMPUTE_SRC_DIR}/ \
    && cp ${COMPUTE_SRC_DIR}/*.go ${COMPUTE_BIN_DIR}/. \
    && cp ${COMPUTE_SRC_DIR}/bin/* /usr/local/bin/. \
    && cp ${COMPUTE_SRC_DIR}/lib/* /usr/local/lib/.

chown -R ${cdp_USER} ${cdp_HOME_DIR} && chgrp -R ${cdp_USER} ${cdp_HOME_DIR}
chown -R ${cdp_USER} ${cdp_LOG_DIR} && chgrp -R ${cdp_USER} ${cdp_LOG_DIR}
chown -R ${cdp_USER} ${GOPATH} && chgrp -R ${cdp_USER} ${GOPATH}
