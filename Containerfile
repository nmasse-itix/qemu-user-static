FROM quay.io/fedora/fedora:42

ADD https://raw.githubusercontent.com/nmasse-itix/qemu-user-static/refs/heads/main/container-entrypoint /container-entrypoint

RUN dnf install -y qemu-user-static \
 && dnf clean all \
 && chmod +x /container-entrypoint

ENTRYPOINT ["/container-entrypoint"]
CMD []
