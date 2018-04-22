FROM centos:centos7

RUN yum clean all
RUN yum -y update

RUN yum -y install php httpd

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

ADD ./rpms/app-0.0.1-1.x86_64.rpm /tmp/app-0.0.1-1.x86_64.rpm

RUN rpm -ivh /tmp/app-0.0.1-1.x86_64.rpm
