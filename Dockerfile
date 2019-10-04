FROM ruby:2.6.3
ENV LANG=C.UTF-8 \
    ENTRYKIT_VERSION=0.4.0 \
    APP_HOME=/app
WORKDIR /tmp
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
                       apt-transport-https \
                       build-essential \
                       cmake \
                       libpq-dev \
                       libqt5webkit5-dev \
                       ghostscript
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
                       yarn \
                       nodejs \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz && \
    tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz && \
    rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz && \
    mv entrykit /bin/entrykit && \
    chmod +x /bin/entrykit && \
    entrykit --symlink
WORKDIR $APP_HOME