# redesigned-broccoli

This is a demo for automating the building of applications as RPMs and deploying them on to servers.


WIP

Currently builds app rpm in container and deploys rpm to app container

```
$ docker build -t rpmbuild .
$ docker run -v ${PWD}/rpm:/rpms:z rpmbuild

# RPM is not hosted anywhere so manually cp to dir for app container to install
$ cp rpm/RPMS/x86_64/app-0.0.1-1.x86_64.rpm app/rpms/app-0.0.1-1.x86_64.rpm

docker build -t app app
docker run -d -p 80:80 -t app

curl http://localhost/app/index.html
```

