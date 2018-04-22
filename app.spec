%define version 0.0.1
%define release 1
%define name app

Name: %{name}
Summary: Our HelloWorld application
Vendor: OurOrg
Release: %{release}
License: GPL
Group: Applications/ExampleOrg
Version: %{version}
Source: %{name}.tar.gz
BuildArch: x86_64
Requires: php httpd

%description
This is a basic application for demonstrating yum-based repositories

%build

%install

%clean

%files

%post
service httpd restart
