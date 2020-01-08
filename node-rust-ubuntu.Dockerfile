FROM ubuntu:18.04
ENV PATH=$PATH:/root/.cargo/bin 
RUN apt-get update && \
    apt-get install curl xz-utils -y && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y &&\
    curl -s https://nodejs.org/dist/v12.14.0/node-v12.14.0-linux-x64.tar.xz | tar x -J \
    -C /usr/local \
    node-v12.14.0-linux-x64/bin \
    node-v12.14.0-linux-x64/include \
    node-v12.14.0-linux-x64/lib \
    node-v12.14.0-linux-x64/share \
    --strip-components=1