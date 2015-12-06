FROM ruby:latest

RUN mkdir /var/rails
ADD . /var/rails/
WORKDIR /var/rails/
RUN bundle install --deployment --without development test

ENV SECRET_KEY_BASE 4792ca8834e528d16e4a1a341baa38a206423504
ENV DATABASE_URL mysql2://root:mysql@mysqld/rails_docker_sample
ENV RAILS_ENV production
ENV WORKER 1
ENV THREAD 8

EXPOSE 9292

CMD puma -e $RAILS_ENV --preload -t $THREAD -w $WORKER

