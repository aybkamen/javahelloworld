FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN touch myfile.txt
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

ENV FOO bar

