CUDA_VER="8"
CUDNN_VER="5"

nvidia-docker build --no-cache \
                    --build-arg CUDA_VER=${CUDA_VER} \
                    --build-arg CUDNN_VER=${CUDNN_VER} \
                    -t kanosawa/base:cuda${CUDA_VER}_cudnn${CUDNN_VER} .
