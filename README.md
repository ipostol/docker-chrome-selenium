## Docker image for Selenium Server with Chrome (adapted from lzhang/selenium)

* [selenium](http://docs.seleniumhq.org/)

### Installation

```sh
$ sudo docker pull eperoumalnaik/docker-chrome-selenium
```

### Usage

Run the container:

```sh
sudo docker run --privileged -p 4444:4444 -d --shm-size=1g eperoumalnaik/docker-chrome-selenium
```

#### Don't forget set more swap memory for server, where you up selenium-server

Selenium server will be available on the host machine at port 4444. Web tests 
will run via headless chrome.

The privileged option is needed so that chrome can run (see
https://github.com/dotcloud/docker/issues/1079).
