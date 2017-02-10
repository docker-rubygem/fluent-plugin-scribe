FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.9

RUN gem install fluent-plugin-scribe --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fluent-scribe-remote"]
CMD ["--help"]
