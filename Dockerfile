FROM evolution7/nodejs-bower-grunt

RUN apt-get install curl git

RUN apt-get update && apt-get install -y \
        php5 php5-intl php5-mcrypt php5-xsl \
        php5-curl php5-gd php5-xdebug \
        php5-imagick