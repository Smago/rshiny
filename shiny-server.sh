#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server
rm -rf /srv/shiny-server/
git clone $SourceAppRepo_URL /srv/shiny-server/

exec shiny-server 2>&1