#!/bin/bash

while true; do
    docker run --rm -v dj-mariadb:/volume -v $(pwd):/backup busybox tar -czf /backup/mariadb_data_backup.tar.gz -C /volume .
    docker run --rm -v domserver_data:/volume -v $(pwd):/backup busybox tar -czf /backup/domserver_data_backup.tar.gz -C /volume .
    docker run --rm -v domserver_images:/volume -v $(pwd):/backup busybox tar -czf /backup/domserver_images_backup.tar.gz -C /volume .

    sleep 30
done

