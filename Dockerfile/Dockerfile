FROM node:0.10
# replace this with your application's default port
EXPOSE 8888

RUN apt-get update && apt-get install -y libnss3 libgconf-2-4 libxi6 libxcursor1 libxcursor1 libasound2 libxdamage1 libxrandr2 libgtk2.0-0 libnotify4 

WORKDIR /usr/src/app

RUN git clone https://github.com/butterproject/butter-desktop.git 

WORKDIR /usr/src/app/butter-desktop

RUN \
    npm install -g grunt-cli bower && \
    npm install && \
    grunt build 

#RUN grunt start 



