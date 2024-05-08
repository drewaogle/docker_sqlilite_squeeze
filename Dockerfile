FROM python:3.11-alpine
RUN apk add e2fsprogs fuse2fs
WORKDIR "/mnt"
COPY squeeze.py "/app/squeeze.py"
COPY app.sh "/app/app.sh"

ENTRYPOINT ["/bin/sh","/app/app.sh"]
