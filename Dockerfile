FROM alpine:latest

COPY run.sh /usr/local/bin/

# Make the script executable
RUN chmod +x /usr/local/bin/run.sh

# Specify the script as the container's entrypoint
ENTRYPOINT ["/usr/local/bin/run.sh"]
