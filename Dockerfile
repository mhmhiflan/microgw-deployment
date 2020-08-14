FROM docker.wso2.com/wso2micro-gw:3.1.0-alpine3.11

LABEL maintainer="dev@ballerina.io"

WORKDIR /home/ballerina

COPY account-managment-1.1.0.jar /home/ballerina
#COPY micro-gw.conf /home/ballerina/conf/micro-gw.conf
RUN /bin/cat micro-gw.conf > /home/ballerina/conf/micro-gw.conf

CMD gateway account-managment-1.1.0.jar
