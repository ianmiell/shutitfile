# ShutItFile

## Automation for everyone

A ShutItFile is an extension of the Dockerfile concept.

In the same way that Dockerfiles were designed as a simple way to create Docker images, ShutItFiles are a simple way to create ShutIt scripts.

ShutItFiles can be used to automate tasks, or automate the building of composable Docker images.

Here's an annotated example:

TODO

## Installation

```
sudo pip install shutit
```

## Examples 

1) Create file locally if it doesn't exist
2) Create Docker image, install nginx
3) Docker image with option to build dev tools in
4) 

## 1) Create file locally if it doesn't exist

This ShutItFile which creates the file /tmp/shutit_marker on the running host if it doesn't exist:

```
IF_NOT FILE_EXISTS /tmp/shutit_marker
RUN touch /tmp/shutit_marker
ENDIF
```

Create the above file 'Shutitfile' in a folder.

To run it, run:

```
shutit skeleton --shutitfile Shutitfile --accept
```

follow the instructions.

TODO: video running this twice

This all happened on the local host, and is the default 'bash' mode.

The next example does the same, but creates a simple Docker image.

## 2) 

```
FROM debian
INSTALL nginx
COMMIT imiell/example_shutitfile:latest
PUSH imiell/example_shutitfile:latest
```

TODO: video
