#FROM openshift/ruby-20-centos7
FROM docker.io/centos/ruby-22-centos7

USER default
EXPOSE 8080

ENV RACK_ENV production
ENV RAILS_ENV production
COPY . /opt/openshift/src/
RUN scl enable ror40 "bundle install"
CMD ["scl", "enable", "ror40", "./run.sh"]
