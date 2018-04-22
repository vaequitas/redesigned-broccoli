FROM centos:centos6

RUN yum clean all
RUN yum -y update

RUN yum -y install httpd

ADD ./rpms/app-0.0.1-1.x86_64.rpm /tmp/app-0.0.1-1.x86_64.rpm
RUN rpm -ivh /tmp/app-0.0.1-1.x86_64.rpm

EXPOSE 80

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
