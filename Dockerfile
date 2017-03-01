FROM scratch
LABEL maintainer "Jan Koppe <post@jankoppe.de>"
ADD bootstrap.tar /
RUN pacman-key --init && pacman-key --populate archlinux
CMD ["bash"]
