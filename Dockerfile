FROM ubuntu:16.04
RUN apt-get update && apt-get install -y openssl=1.0.2g-1ubuntu4 bash=4.3-14ubuntu1 wget curl git && rm -rf /var/lib/apt/lists/*
USER root
RUN useradd -m vulnuser && echo "vulnuser::0:0:root:/root:/bin/bash" >> /etc/passwd
WORKDIR /app
COPY . .
EXPOSE 22
CMD ["/bin/bash"]
