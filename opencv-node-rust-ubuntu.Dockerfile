FROM zpnester/node-rust-ubuntu
ENV LD_LIBRARY_PATH=/usr/local/lib
RUN apt-get update && \
    apt-get install build-essential git \
    cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev -y && \
    git clone https://github.com/opencv/opencv.git /root/opencv && \
    mkdir /root/opencv/build && \
    cd /root/opencv/build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make -j4 && \
    make install && \
    rm -rf /root/opencv

# -I/usr/local/include/opencv4
# -L/usr/local/lib
# -lopencv_core -lopencv_imgcodecs -lopencv_imgproc ...