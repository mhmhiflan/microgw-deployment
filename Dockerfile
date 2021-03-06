FROM docker.wso2.com/wso2micro-gw:3.1.0-alpine3.11

LABEL maintainer="dev@ballerina.io"

WORKDIR /home/ballerina

COPY test/togo-integration-1.0.0.jar /home/ballerina
COPY test/micro-gw.conf /home/ballerina/wso2/conf
COPY test/micro-gw.conf /home/ballerina/conf
COPY ballerinaTruststore.p12 /home/ballerina/wso2/runtime/bre/security

CMD gateway togo-integration-1.0.0.jar
