FROM centos:latest
MAINTAINER shubham
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/focus.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip focus.zip
RUN cp -rvf focus/* .
RUN rm -rf focus focus.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

