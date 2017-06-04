# Imaginary Alpine 

Lightweight [Docker image](https://hub.docker.com/r/stead/imaginary-alpine/) for image processing service [Imaginary](https://github.com/h2non/imaginary).

Built two different ways to find the most optimal.

- [Dockerfile](https://github.com/mikestead/docker-imaginary-alpine/blob/master/Dockerfile): Single Dockerfile which compiles binaries and then attempts to cleanup build dependencies.
- [Dockerfile.multi](https://github.com/mikestead/docker-imaginary-alpine/blob/master/Dockerfile.multi): Single [multi-stage](https://docs.docker.com/engine/userguide/eng-image/multistage-build) Dockerfile, compiling binaries and then copying them into clean Alpine image. Support for multi-part Dockerfile's coming in Docker 17.05.

#### Image Sizes

- [Dockerfile](https://github.com/mikestead/docker-imaginary-alpine/blob/master/Dockerfile): `101mb`, `58mb` compressed
- [Dockerfile.multi](https://github.com/mikestead/docker-imaginary-alpine/blob/master/Dockerfile.multi): `56mb`, `20mb` compressed

## Usage

See [Imaginary](https://github.com/h2non/imaginary#command-line-usage) readme for full usage.

#### Example

Start the server

    docker run --rm -p 9000:9000 stead/imaginary-alpine -enable-url-source

Resize an image

    http://localhost:9000/resize?width=800&height=500&url=https://c1.staticflickr.com/1/409/18186063494_386acbe85c_k.jpg&type=webp

## Disclaimer

This has not been tested in production. Use at your own risk.
