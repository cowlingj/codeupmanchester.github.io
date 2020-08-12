FROM ruby:2.7.1

COPY . /srv/app
WORKDIR /srv/app
RUN addgroup --system app && \
    adduser --system --ingroup app app && \
    mkdir /dest  &&\
    chown app /dest

# Let ruby listen on ports <=1024
RUN setcap 'CAP_NET_BIND_SERVICE=+epi' $(which ruby)

USER app

RUN gem install bundler -v 1.16.2 && \
    bundle install

EXPOSE 80
VOLUME /srv/app
ENTRYPOINT [ "jekyll" ]
CMD [ "serve", "--incremental", "--port", "80", "--host", "0.0.0.0", "--watch", "--destination", "/dest" ]
