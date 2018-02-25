Reddit Node.js Base Image for Docker
====================================x

This repository contains a "fat" base image that is a rough approximation of a standard Reddit Node.js environment.

Why?
---

Most of the Reddit Node.js-backed services and daemons require a fairly standard (and long) list of dependencies. By baking these dependencies into a Docker image, we can reduce setup time during local dev, the staging environment, and in CI builds.

Changing the Base Image
-----------------------

Commits to the master branch in this repository are automatically built by our CI system. The resulting image is pushed to Docker Hub as [reddit/reddit-nodejs](https://hub.docker.com/r/reddit/reddit-nodejs/) with the `latest` tag.

Make sure to test your changes locally using the Makefile before committing!

```
# Build as reddit/reddit-nodejs:local
make build
# This will attach you to a bash session in the container.
make run
```

License
-------

The contents of this repository are licensed under the BSD License.
