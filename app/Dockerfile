FROM centos:centos6

RUN yum clean all
RUN yum -y update

RUN yum -y install php httpd

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

ADD ./rpms/app-0.0.1-1.x86_64.rpm /tmp/app-0.0.1-1.x86_64.rpm
ADD ./conf/vhost /etc/httpd/conf.d/25-app-vhost

RUN rpm -ivh /tmp/app-0.0.1-1.x86_64.rpm

EXPOSE 80

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
