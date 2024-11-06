FROM archlinux
RUN pacman-db-upgrade
RUN pacman -Syyu --noconfirm
RUN pacman -S base-devel rust --noconfirm
RUN useradd -m builduser
RUN passwd -d builduser
USER builduser
WORKDIR /home/builduser
COPY . .
CMD ["bash", "build.sh"]