#!/bin/bash

date_time=$(date +"%d.%m.%y_%T")
mkdir ~/test/ 2>/dev/null && echo "catalog test was created successfully" > ~/report && touch > ~/test/${date_time}
ping "www.net_nikogo.ru" 2>/dev/null || echo "${date_time} ERROR:Site is down" >> ~/report
