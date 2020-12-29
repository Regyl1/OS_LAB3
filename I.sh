#!/bin/bash

time=$(date +"%d.%m.%y_%T")
mkdir ~/test && echo "catalog was created successfully" > ~/report && touch ~/test/$time
ping "www.net_nikogo.ru" || echo "$time ERROR:NO CONNECTION" >> ~/report
