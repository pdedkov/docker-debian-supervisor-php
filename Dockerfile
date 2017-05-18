FROM pdedkov/php-cli:php5
MAINTAINER Pavel E. Dedkov <pavel.dedkov@gmail.com>

RUN apt-get update \
&& apt-get upgrade -y \ 
&& apt-get install -y --no-install-recommends supervisor \
&& apt-get autoclean \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["supervisord"]
CMD ["-n"]

