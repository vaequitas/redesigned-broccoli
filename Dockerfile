FROM centos:centos6

RUN yum clean all
RUN yum -y update

RUN yum -y install rpm-build make

RUN yum -y install "perl(Error)" "perl(ExtUtils::MakeMaker)"

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

ADD ./app.spec /root/rpmbuild/SPECS/app.spec
ADD ./build.sh /build.sh

RUN chmod +x /build.sh

COPY ./app.tar.gz /root/rpmbuild/SOURCES/app.tar.gz

VOLUME ["/rpms"]

CMD ["/build.sh"]
