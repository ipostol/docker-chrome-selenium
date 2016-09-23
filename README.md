## Docker image for Selenium Server with Chrome (adapted from lzhang/selenium)

* [selenium](http://docs.seleniumhq.org/)

### Installation

```sh
$ sudo docker pull eperoumalnaik/docker-chrome-selenium
```

### Usage

Run the container:

```sh
sudo docker run --privileged -p 4444:4444 -d eperoumalnaik/docker-chrome-selenium

docker exec $id sudo umount /dev/shm
docker exec $id sudo mount -t tmpfs -o rw,nosuid,nodev,noexec,relatime,size=512M tmpfs /dev/shm
```

Selenium server will be available on the host machine at port 4444. Web tests 
will run via headless chrome.

The privileged option is needed so that chrome can run (see
https://github.com/dotcloud/docker/issues/1079).

Shutting down the container:

```sh
$ sudo docker kill $id
```
