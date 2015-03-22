FROM brigand/ruby
RUN apk update \
  && apk add ruby-dev libpq libgcc ca-certificates make gcc libc-dev libffi-dev \
             nodejs 'python<3' zlib-dev libxml2 libxml2-dev libxslt libxslt-dev \
  && gem install nokogiri -- --use-system-libraries \
  && gem install jekyll \
  && gem install github-pages \
  && apk del --purge libgcc gcc make libc-dev libffi-dev zlib-dev libxml2-dev libxslt-dev
RUN mkdir /usr/ws
WORKDIR /usr/ws
CMD ["echo", "This container has no default action."]

