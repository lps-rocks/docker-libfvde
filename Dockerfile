# Use an appropriate base image
FROM ubuntu:22.04

# Set up environment and install packages
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:gift/stable && \
    apt-get update && \
    apt-get install -y libfvde-tools libfsapfs-tools libbde-tools && \
    rm -rf /var/lib/apt/lists/*

# Set the entry point to a shell for interaction
CMD ["/bin/bash"]
