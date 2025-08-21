FROM ubuntu:16.04
# outdated OS, no pins, no checksums
USER root
RUN apt-get update && apt-get install -y curl wget git && rm -rf /var/lib/apt/lists/*
# ADD from remote url is discouraged
ADD http://example.com/some.tar.gz /tmp/some.tar.gz
EXPOSE 22
CMD ["bash","-lc","echo Insecure container running as root; sleep 5"]
