RailsDockerSample
========

Usage
--------

```
RAILS_ENV=production DATABASE_URL="mysql2://root:mysql@192.168.99.100/rails_docker_sample" rake db:create
SECRET_KEY_BASE=`uuidgen` DATABASE_URL="mysql2://root:mysql@192.168.99.100/rails_docker_sample" puma -e production
docker run -it -p 9292:9292 -e DATABASE_URL="mysql2://root:mysql@192.168.99.100/rails_docker_sample" 59c42f3218b0
```

