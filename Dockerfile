FROM jesperrasmussen/jmeter-server

MAINTAINER Jesper Rasmussen <hello@jesperrasmussen.com>

ENV TEST_DIR default
ENV TEST_PLAN test-plan
ENV REMOTE_HOSTS 127.0.0.1

COPY load_tests /
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
