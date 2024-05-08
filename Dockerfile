FROM python:3.11-alpine
WORKDIR "/mnt"
COPY test.py "/app/test.py"
ENTRYPOINT ["python3","/app/test.py"]
