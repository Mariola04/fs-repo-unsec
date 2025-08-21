FROM ubuntu:16.04

# Install outdated packages
RUN apt-get update && apt-get install -y openssl=1.0.2g-1ubuntu4 bash=4.3-14ubuntu1 wget curl git && rm -rf /var/lib/apt/lists/*

# Run as root
USER root

# Add a user with UID 0 (bad)
RUN useradd -m vulnuser && echo "vulnuser::0:0:root:/root:/bin/bash" >> /etc/passwd


RUN echo "AWS_SECRET_ACCESS_KEY=FAKESECRETKEY1234567890" > /root/secret.txt

WORKDIR /app
COPY . .

EXPOSE 22
CMD ["/bin/bash"]
