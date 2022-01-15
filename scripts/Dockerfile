FROM ubuntu:latest

RUN apt-get update && apt-get install -y gcc clang git curl
RUN mkdir -p /download && cd /download && \
    curl -o bazel-4.2.2-linux-x86_64 -L https://github.com/bazelbuild/bazel/releases/download/4.2.2/bazel-4.2.2-linux-x86_64 && \
    ln -sf /download/bazel-4.2.2-linux-x86_64 /usr/bin/bazel && \
    mkdir -p src && cd src && git clone https://github.com/caipengyang/modern-cpp.git && ls modern-cpp && \
    cd modern-cpp/scripts && chmod +x register-runner.sh && ls /download/src/modern-cpp/scripts

# RUN tail -f /download/src/modern-cpp/scripts/*


# RUN bash /download/src/modern-cpp/scripts/register-runner.sh

