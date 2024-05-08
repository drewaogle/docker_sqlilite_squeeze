#/bin/sh
cd /mnt
if [ ! -e volume.ext3 ]; then
    /sbin/mkfs.ext3 volume.ext3 10M
fi
mkdir /volume
fuse2fs volume.ext3 /volume
cd /volume
python3 /app/squeeze.py

