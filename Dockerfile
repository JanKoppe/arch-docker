FROM scratch
LABEL maintainer "Jan Koppe <post@jankoppe.de>"
ADD bootstrap.tar /
RUN echo "Server = https://mirror.jankoppe.de/\$repo/os/\$arch"\
    > /etc/pacman.d/mirrorlist\
    && pacman-key --init\
    && pacman-key --populate archlinux
CMD ["bash"]
