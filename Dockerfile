FROM centos:centos7

RUN yum clean all
RUN yum -y update

RUN yum -y install rpm-build make

RUN yum -y install "perl(Error)" "perl(ExtUtils::MakeMaker)"

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

ADD ./app.spec /root/rpmbuild/SPECS/app.spec
ADD ./build.sh /build.sh

RUN chmod +x /build.sh

ADD ./app.tar.gz /root/rpmbuild/SOURCES/app.tar.gz

VOLUME ["/rpms"]

CMD ["/build.sh"]
