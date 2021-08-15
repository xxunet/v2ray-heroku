FROM v2fly/v2fly-core:v4.40.1

ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


