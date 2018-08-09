FROM alpine:3.2
RUN apk --update add openjdk7-jre

RUN mkdir /hak5
ADD https://github.com/hak5darren/USB-Rubber-Ducky/blob/master/duckencoder.jar?raw=true /hak5

RUN mkdir /workspace
VOLUME /workspace
WORKDIR /workspace

ENTRYPOINT ["java", "-jar", "/hak5/duckencoder.jar"]
CMD ["-o", "inject.bin", "-i", "test.ducky"]
