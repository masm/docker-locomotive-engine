FROM ruby:2.1
MAINTAINER Marco Monteiro <marco@neniu.org>

CMD ["rails", "server"]
ENTRYPOINT ["bundle", "exec"]
EXPOSE 3000
WORKDIR /app

RUN bundle config path /bundle
COPY dot-gemrc /root/.gemrc
