FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore
RUN apt-get update && apt-get install -y gcc clang git curl vim tzdata
RUN mkdir -p /download && cd /download && \
    curl -o bazel-4.2.2-linux-x86_64 -L https://github.com/bazelbuild/bazel/releases/download/4.2.2/bazel-4.2.2-linux-x86_64 && \
    ln -sf /download/bazel-4.2.2-linux-x86_64 /usr/bin/bazel && \
    chmod +x /usr/bin/bazel && /usr/bin/bazel --help && \
    mkdir -p src && cd src && git clone https://github.com/caipengyang/modern-cpp.git && ls modern-cpp && \
    cd modern-cpp/scripts && chmod +x register-runner.sh && cd /download/src/modern-cpp/

ENTRYPOINT ["/bin/sh", "-c", " cd /download/src/modern-cpp/ && git pull && bash ./scripts/register-runner.sh"]

