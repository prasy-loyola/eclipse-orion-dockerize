FROM openjdk:8-jre

RUN curl -o /tmp/orion.zip https://ftp.yz.yamagata-u.ac.jp/pub/eclipse//orion/drops/S20200421-1712/eclipse-orion-22.0.0S1-linux.gtk.x86_64.zip && \
    cd /opt && unzip /tmp/orion.zip && \
    rm -rf /tmp/orion.zip && \
    chmod +x /opt/eclipse/orion

EXPOSE 8080

WORKDIR /opt/eclipse
ADD  orion.conf orion.conf
# ADD  .gitconfig /root/.gitconfig

RUN pwd
CMD ["./orion"]
