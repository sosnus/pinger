FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl

COPY script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

CMD ["/bin/bash", "/usr/local/bin/script.sh"]