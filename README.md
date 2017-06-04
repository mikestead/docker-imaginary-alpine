# Imaginary Alpine 

Lightweight [Docker image](https://hub.docker.com/r/stead/imaginary-alpine/) for image processing service [Imaginary](https://github.com/h2non/imaginary).

I've attempted to build this a few differnt ways to see the most optimal.

- `Dockerfile`: Single Dockerfile which compiles binaries and then attempts to cleanup build dependencies.
- `Dockerfile.1build` + `Dockerfile.2release`: Uses `build.sh` to first build the binaries then copy them over to a clean images
- `Dockerfile.multi`: Same as previous but in a single [multi-stage](https://docs.docker.com/engine/userguide/eng-image/multistage-build) Dockerfile. Support coming in Docker 17.05

#### Sizes

- `Dockerfile`: 102mb
- `Dockerfile.1build` + `Dockerfile.2release`: 56mb, 21mb compressed
- `Dockerfile.multi`: 56mb, 21mb compressed

## Usage

See [Imaginary](https://github.com/h2non/imaginary) readme for full usage.

Example:

Start the server

    docker run --rm -p 9000:9000 stead/imaginary-alpine -enable-url-source

Resize an image

    http://localhost:9000/resize?width=800&height=500&url=https://c1.staticflickr.com/1/409/18186063494_386acbe85c_k.jpg&type=webp

## Disclaimer

This has not been tested in production. Use at your own risk.
