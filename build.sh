#!/bin/bash

rpmbuild -ba ~/rpmbuild/SPECS/app.spec

cp -r ~/rpmbuild/SRPMS /rpms
cp -r ~/rpmbuild/RPMS /rpms
