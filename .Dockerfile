FROM gitpod/workspace-mysql

USER root

SHELL ["/bin/bash", "-c"]

# Install other needed packages
RUN add-apt-repository -y ppa:ondrej/apache2
RUN apt update
RUN sudo apt install -y php-pear php-apcu php-json php-xdebug build-essential mysql-client sendmail
RUN pecl install apcu
RUN pecl install uploadprogress
#switch to PHP 7.4, but would have to install 7.4 first, which is not currently working
#RUN echo "2" | update-alternatives --config php

#Copy configuration files
COPY .gitpod/php.ini /etc/php/7.4/apache2/php.ini
COPY .gitpod/php.ini /etc/php/8.0/apache2/php.ini
COPY .gitpod/apache2.conf /etc/apache2/apache2.conf

# Install latest composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir /usr/bin --filename composer
RUN php -r "unlink('composer-setup.php');"

# Install pa11y accessibility testing tool, including NodeJS and Chromium
RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm-amdgpu1 libxkbcommon-x11-0 libxcomposite-dev libxdamage-dev libxrandr-dev libgbm-dev libgtk-3-common libxshmfence-dev software-properties-common
RUN add-apt-repository ppa:phd.re/chromium-browser
RUN apt-get update
RUN apt-get install -y apparmor libudev1 snapd squashfs-tools udev apparmor-profiles-extra apparmor-utils fuse zenity kdialog chromium-browser libappindicator1 fonts-liberation
RUN npm install pa11y -g --unsafe-perm=true --allow-root

# Expose Apache and MySQL
EXPOSE 80
EXPOSE 443
EXPOSE 3306
