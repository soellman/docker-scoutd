#!/bin/bash

cat /etc/scout/scoutd.yml.tmpl | envsubst > /etc/scout/scoutd.yml

exec $@
