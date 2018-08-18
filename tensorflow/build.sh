nvidia-docker build --no-cache \
                    --build-arg CUDA_VER=${CUDA_VER} \
                    --build-arg CUDNN_VER=${CUDNN_VER} \
                    -t kanosawa/tensorflow .
