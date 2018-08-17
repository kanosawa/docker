CUDA_VER="9"
CUDNN_VER="7"

nvidia-docker run --rm \
                  -e DISPLAY=$DISPLAY \
                  -v /tmp/.X11-unix:/tmp/.X11-unix \
                  -v /home/kanosawa/dataset:/root/dataset \
                  -v /home/kanosawa/src:/root/src \
                  -it kanosawa/base:cuda${CUDA_VER}_cudnn${CUDNN_VER}
                  