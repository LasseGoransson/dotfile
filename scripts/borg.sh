#!/bin/sh
REPOSITORY=root@borg.lan:xps15


# Backup all of /home and /var/www except a few
# excluded directories
borg create --progress -v --stats --chunker-params 19,23,21,4095                          \
    $REPOSITORY::'{hostname}-{now:%Y-%m-%d}'    \
    /home                                       \
    --exclude-caches \
    --exclude '/home/*/.cache'                  \
    --exclude '/home/*/.local/share/Trash/*'                  \
    --exclude '*.pyc' \
    --exclude '*Steam/*' \
    --exclude '/home/*/Downloads' \
    --exclude '*.vdi' \
    --exclude '*.sav' 

# Use the `prune` subcommand to maintain 7 daily, 4 weekly and 6 monthly
# archives of THIS machine. The '{hostname}-' prefix is very important to
# limit prune's operation to this machine's archives and not apply to
# other machine's archives also.
borg prune -v --list $REPOSITORY --prefix '{hostname}-' \
    --keep-daily=7 --keep-weekly=4 --keep-monthly=6

