#Builds a java 7 container with the sharpen jar that converts the code of the java project
FROM azul/zulu-openjdk-alpine:7u322
RUN mkdir /sharpen && cd /sharpen &&  wget -q https://github.com/javiertuya/sharpen/releases/download/v0.0.1-fork/sharpencore-0.0.1-SNAPSHOT.jar
COPY entrypoint.sh /sharpen/entrypoint.sh
RUN mkdir /sharpen/workdir
WORKDIR /sharpen/workdir
ENTRYPOINT ["sh","/sharpen/entrypoint.sh"]
