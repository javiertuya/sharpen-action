#Builds a java 7 container with the sharpen jar that converts the code of the java project
FROM azul/zulu-openjdk-alpine:7u322
RUN mkdir /sharpen && cd /sharpen &&  wget -q https://github.com/javiertuya/sharpen/releases/download/v1.1.0-fork/sharpencore-1.1.0-fork-jar-with-dependencies.jar
COPY entrypoint.sh /sharpen/entrypoint.sh
RUN mkdir /sharpen/workdir
WORKDIR /sharpen/workdir
ENTRYPOINT ["sh","/sharpen/entrypoint.sh"]
