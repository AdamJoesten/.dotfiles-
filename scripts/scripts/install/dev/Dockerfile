FROM ubuntu:22.04

# Avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies for a desktop environment
RUN apt-get update && apt-get install -y \
    ubuntu-desktop \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Update and install application specific dependencies
# RUN apt-get update && apt-get install -y \
#     libx11-6 \
#     libgl1-mesa-glx \
#     libfontconfig1 \
#     libnss3 \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

COPY ../install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh
CMD ["/usr/local/bin/install.sh"]
