FROM java:7
MAINTAINER Michael Hendrix <mgthendrix@gmx.net>

ENV FOO bar

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN cd bin

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
