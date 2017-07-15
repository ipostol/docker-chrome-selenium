#!/bin/bash

export DISPLAY=:99
/etc/init.d/xvfb start
echo "Starting Google Chrome ..."
google-chrome --remote-debugging-port=9222 &
webdriver-manager start
# java -Dwebdriver.chrome.driver=/srv/chromedriver -jar /srv/selenium-server-standalone-3.4.0.jar
