FROM ruby:2.2-alpine

RUN apk --update add g++ musl-dev make postgresql-dev libxml2-dev libxslt-dev && rm -rf /var/cache/apk/*
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN gem install gitrob

COPY ./start-gitrob.sh /root/
RUN chmod +x /root/start-gitrob.sh
RUN touch $(gem environment gemdir)/gems/gitrob-1.1.2/agreement.txt

CMD ["/root/start-gitrob.sh"]