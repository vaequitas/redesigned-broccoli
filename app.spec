%define version 0.0.1
%define release 1
%define name app

Name: %{name}
Summary:HelloWorld application
Vendor: HelloWorld
Release: %{release}
License: GPL
Group: Applications/ExampleOrg
Version: %{version}
Source: %{name}.tar.gz
BuildArch: x86_64
Requires: httpd

%description
This is a basic application for demonstrating yum-based repositories

%prep
%setup -q -n app

%build

%install
mkdir -p $RPM_BUILD_ROOT/var/www/html/app
cp -r * $RPM_BUILD_ROOT/var/www/html/app

%clean
rm -rf $RPM_BUILD_ROOT/var/www/html/app

%files
/var/www/html/app
