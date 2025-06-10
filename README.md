# qemu-user-static container image

## Build

```sh
git clone https://github.com/nmasse-itix/qemu-user-static.git
cd qemu-user-static
sudo podman build -t localhost/qemu-user-static:latest .
```

## Run

```sh
sudo podman run -it --privileged --security-opt label=filetype:container_file_t --security-opt label=level:s0 --security-opt label=type:spc_t localhost/qemu-user-static:latest
```

## Test

```sh
sudo podman run -it --rm --platform linux/arm64/v8 docker.io/library/alpine:latest
```

