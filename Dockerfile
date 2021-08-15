FROM v2fly/v2fly-core:${V2flyDockerTag}

ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


