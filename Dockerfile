FROM centos
RUN yum update -y
RUN yum install httpd -y
RUN echo "Welcome to GALAXY httpd!" >> /var/www/httpd/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]