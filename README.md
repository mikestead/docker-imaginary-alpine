# Imaginary Alpine 

Lightweight [Docker image](https://hub.docker.com/r/stead/imaginary-alpine/) for image processing service [Imaginary](https://github.com/h2non/imaginary).

Image size is `16mb` compressed.

## Usage

See [Imaginary](https://github.com/h2non/imaginary#command-line-usage) readme for full usage.

    docker run --rm stead/imaginary-alpine -h

#### Example

Start the server

    docker run --rm -p 9000:9000 stead/imaginary-alpine -enable-url-source

Resize an image

    http://localhost:9000/resize?width=800&height=500&url=https://c1.staticflickr.com/1/409/18186063494_386acbe85c_k.jpg&type=webp

## Disclaimer

This has not been tested in production. Use at your own risk.
