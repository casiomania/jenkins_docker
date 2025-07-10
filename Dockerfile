FROM jenkins/jenkins:lts

USER root
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
 && apt-get update -qq \
 && apt-get install -y nodejs \
 && npm install -g newman@latest \
 && npm install -g newman-reporter-htmlextra@latest \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

USER jenkins