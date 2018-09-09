# shtty

Run a shell or command Docker container as your user, with your home,
and in your current working directory.

## Examples

### Shell

```
$ shtty alpine
$ id
uid=1000(ar) gid=1000(ar) groups=1000(ar) 
$ pwd
/home/ar
$ ls -l
total 116
drwx------    6 ar       users        12288 Sep  9 22:33 .
drwxr-xr-x    1 root     root          4096 Sep  9 22:31 ..
-rw-------    1 ar       draje          139 Sep  9 22:33 .ash_history
-rw-------    1 ar       draje          147 Sep  9 22:28 .bash_history
drwxr-xr-x    8 ar       users         4096 Sep  7 23:35 .cache
drwx------    5 ar       users         4096 Sep  7 16:23 .config
...
```

### Pipes

```
$ echo hello! | shtty fedora tr a-z A-Z | shtty ubuntu sed 's/.*/!!&!!/'
!!HELLO!!
```

### Interactive Applications

```
$ docker run -d --net=host postgres
6cf06bccc0df3a11cf1fd67d92752f74978dcf8e6e229b4a750031979f9124ca

$ shtty postgres psql -U postgres -h localhost
psql (10.5 (Debian 10.5-1.pgdg90+1))
Type "help" for help.

postgres=#
```

## Usage

```
Usage:  shtty [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container as your user, with your home,
and in your current working directory.

Options:
      --help                           Print usage
      --pull                           Pull the image before running
```
