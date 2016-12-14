FROM selenium/hub

# Add japanese support
RUN cd /tmp \
    && wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add - \
    && wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add - \
    && sudo wget https://www.ubuntulinux.jp/sources.list.d/xenial.list -O /etc/apt/sources.list.d/ubuntu-ja.list \
    && sudo apt-get update -y \
    && sudo apt-get upgrade -y \
    && sudo apt-get install -y ubuntu-defaults-ja
