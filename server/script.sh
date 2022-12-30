#!/bin/bash

service nginx start
spawn-fcgi -p 8080 server.out

while true
do
    wait
done
