RUN centos:latest
RUN yum install zip httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/digitalex.zip
WORKDIR /var/www/html
RUN unzip digitalex.zip
RUN rm -rf digitalex.zip &&\
    cp -rf digitalex/*. &&\
    rm -rf digitalex &&\
EXPOSE 80
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
