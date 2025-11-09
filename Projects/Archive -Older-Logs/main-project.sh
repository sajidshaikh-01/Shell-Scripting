#!/bin/bash
#Sun Nov  9 10:43:05 UTC 2025


#variables
BASE=/root/shell-script/projects
DAYS=10
DEPTH=1
RUN=0


#check if the directory is present or not

if [ ! -d $BASE ]
then
        echo "directory does not exist: $BASE"
        exit 1
fi

#create archive folder if not present
if [ ! -d $BASE/archive ]
then
        mkdir $BASE/archive
fi


# find the list of files larger than 20MB

for i in 'find $BASE -maxdepth 4DEPTH -type -size +20M'
do
        if [ $RUN -eq 0]
        then
                echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
                gzip $i || exit 1
                mv $i.gz $BASE/archive || exit 1
        fi
done





## for schedule a cron job and this is for demo purpose
#crontab -e
#*  *  *  *  *  command
|  |  |  |  |
|  |  |  |  └── Day of week (0–6) [Sunday=0]
|  |  |  └──── Month (1–12)
|  |  └─────── Day of month (1–31)
|  └────────── Hour (0–23)
└───────────── Minute (0–59)


#| Schedule     | Description             | Example                |
| ------------ | ----------------------- | ---------------------- |
| `* * * * *`  | Every minute            | Run every 1 minute     |
| `0 * * * *`  | Every hour              | Run once every hour    |
| `0 2 * * *`  | Daily at 2 AM           | Run backup every night |
| `30 5 * * 1` | Every Monday at 5:30 AM | Weekly task            |
| `0 0 1 * *`  | 1st of every month      | Monthly cleanup        |
