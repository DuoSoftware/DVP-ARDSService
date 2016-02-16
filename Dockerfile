#FROM ubuntu
#RUN apt-get update
#RUN apt-get install -y git nodejs npm
#RUN git clone git://github.com/DuoSoftware/DVP-ARDSService.git /usr/local/src/ardsservice
#RUN cd /usr/local/src/ardsservice; npm install
#CMD ["nodejs", "/usr/local/src/ardsservice/app.js"]

#EXPOSE 8829

FROM node:argon
RUN git clone git://github.com/DuoSoftware/DVP-ARDSService.git /usr/local/src/ardsservice
RUN cd /usr/local/src/ardsservice;
WORKDIR /usr/local/src/ardsservice
RUN npm install
EXPOSE 8829
CMD [ "node", "/usr/local/src/ardsservice/app.js" ]
