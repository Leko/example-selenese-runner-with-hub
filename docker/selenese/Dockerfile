FROM maven:3.3-alpine

# Install selenese-runner
RUN apk add --no-cache git openssh \
    && cd /tmp \
    && git clone https://github.com/vmi/selenese-runner-java.git \
    && cd selenese-runner-java \
    && mvn -P package \
    && mv ./target/selenese-runner.jar /usr/local/lib/ \
    && echo '#!/usr/bin/env bash' >> /usr/local/bin/selenese-runner \
    && echo 'java -jar /usr/local/lib/selenese-runner.jar $@' >> /usr/local/bin/selenese-runner \
    && chmod +x /usr/local/bin/selenese-runner
