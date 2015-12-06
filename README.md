RailsDockerSample
========

Usage
--------

```
RAILS_ENV=production DATABASE_URL="mysql2://root:mysql@192.168.99.100/rails_docker_sample" rake db:create
SECRET_KEY_BASE=`uuidgen` DATABASE_URL="mysql2://root:mysql@192.168.99.100/rails_docker_sample" puma -e production
```
