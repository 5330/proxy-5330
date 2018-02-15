FROM nginx


COPY ./nginx.conf ./nginx.conf
COPY ./nginx.conf.pre ./nginx.conf.pre
COPY ./run-proxy-5330.sh ./run-proxy-5330.sh

RUN chmod 755 ./run-proxy-5330.sh

ENTRYPOINT ["./run-proxy-5330.sh"]
