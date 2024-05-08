
# requires fuse2fs, apt install fuse2fs in ubunutu.
#mkfs -t ext3 demo.ext3 10M
#fuse2fs demo.ext3 volume/
docker run -it -v ./volume:/mnt sqlite_squeeze:0.1
#fusermount -u volume
