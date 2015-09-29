This is a quickstart Docker image template for the [Machine Learning Foundations](https://www.coursera.org/learn/ml-foundations) Coursera track from University of Washington.

## Preqs

Before you can use it, you'll need

- [Docker](https://docs.docker.com/installation/)
- [Git](https://git-scm.com/downloads)
- A text editor

## Build

Because the [GraphLab Create](https://dato.com/download/https://dato.com/products/create/) library used in the track requires a license key, you'll need to build a custom Docker image for your own use:

- Clone this repo

```
git clone https://github.com/edrex/docker-machine-learning-course
```

- [Register](https://dato.com/download/) to obtain a GraphLab Create download URL.
- Edit the [Dockerfile](Dockerfile) and paste your download URL.
- Build your image from the main folder

```
docker build -t machine-learning .
```

## Run

```
docker run -it -p 8888:8888 -v $PWD/notebooks:/notebooks ml
docker run -t -p 8888:8888 -v $PWD/notebooks:/notebooks -i machine-learning
```

- Access the notebook from your browser
  - On Linux: `http://localhost:8888`
  - On OSX/Windows:
    - run `docker-machine ip` to find out your Docker host IP address.
    - `http://my-host-ip-address:8888`

## Customize

You can edit the Dockerfile to install additional Python packages etc. You'll need to re-run the build step each time you change the Dockerfile.

To test out commands, you can start the docker container like this:

```
docker run -t -p 8888:8888 -v ./notebooks:/notebooks -i machine-learning /bin/bash
```
