set -ex

PREFIX=federatedai
BASE_TAG=latest
Docker_Options=""
TAG=v2.0.0-rc
WORKING_DIR=$(pwd)
OS=centos

docker build --build-arg PREFIX=${PREFIX} --build-arg BASE_TAG=${BASE_TAG} --build-arg http_proxy=${http_proxy} --build-arg https_proxy=${https_proxy} \
    ${Docker_Options} -t ${PREFIX}/base-image-ipcl:${TAG}-${OS} -f ${WORKING_DIR}/base/ipcl/Dockerfile ${WORKING_DIR}/cache

# docker build --build-arg PREFIX=${PREFIX} --build-arg BASE_IMAGE=base-image-ipcl --build-arg BASE_TAG=${TAG} ${Docker_Options} -t ${PREFIX}/fateflow-ipcl:${TAG} \
#     -f ${WORKING_DIR}/modules/fateflow/Dockerfile ${WORKING_DIR}/cache

# docker build --build-arg SOURCE_PREFIX=${PREFIX} --build-arg SOURCE_TAG=${TAG} ${Docker_Options} -t ${PREFIX}/fate-test-ipcl:${TAG} -f ${WORKING_DIR}/modules/fate-test/Dockerfile ${WORKING_DIR}/modules/fate-test/
