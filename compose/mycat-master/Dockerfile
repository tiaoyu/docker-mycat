FROM java:8-jre AS base
WORKDIR /app
EXPOSE 8066 9066

FROM base AS mycat1
LABEL version="1.0" MAINTAINER="tiaoyu txydsx@live.com"
WORKDIR /app
COPY Mycat-server.tgz /app/
RUN tar -zxvf Mycat-server.tgz
WORKDIR /app/mycat/bin
COPY start_with_zk.sh /app/mycat/bin
ENTRYPOINT ["sh","start_with_zk.sh","/app/mycat"]
