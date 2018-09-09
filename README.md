# shtty

Run a Docker container's shell with your user in your home.

* A user configured with the same name, UID, primary GID
* Support for most Docker images (alpine, fedora, ubuntu, etc.)
* Your home directory as a volume
* In your current working directory

## Usage

```
Usage:  shtty [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container as your user, with your home,
and in your current working directory.

Options:
      --help                           Print usage
      --pull                           Pull the image before running
```
