FROM bellsoft/liberica-openjdk-alpine:latest
RUN apk add -U tzdata
ENV TZ America/Lima
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime
RUN echo "${TZ}" > /etc/timezone
VOLUME /tmp
EXPOSE 8003
ADD ./target/ms-usuarios-0.0.1-SNAPSHOT.jar ms-usuario.jar
ENTRYPOINT ["java", "-jar", "/ms-usuario.jar"]