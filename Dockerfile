FROM zanconsulting/selenium:1.0.3

RUN echo "Installing Packages" \
    && apt-get update \
    && apt-get install -y \
        php5-cli \
        php5-curl \
    && echo "Done"


VOLUME /var/auto-selenium-script/

#
# Copy services
#
RUN mkdir -p /etc/service/browserscript

COPY services/browserscript /etc/service/browserscript/run