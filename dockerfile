#FROM fabric8/java
FROM jolokia/java-jolokia:6

RUN curl -o /tmp/orion.zip https://github.com/eclipse/orion.client/archive/R20_0.zip && \
    cd /opt && unzip /tmp/orion.zip && \
    rm -rf /tmp/orion.zip

RUN chmod +x /opt/eclipse/orion

EXPOSE 8080

WORKDIR /opt/eclipse

ADD  orion.conf /opt/eclipse/orion.conf
ADD  .gitconfig /root/.gitconfig

CMD ["/opt/eclipse/orion"]
