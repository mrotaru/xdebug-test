# /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get install -y php5
echo mysql-server-5.0 mysql-server/root_password password asd | debconf-set-selections
echo mysql-server-5.0 mysql-server/root_password_again password asd | debconf-set-selections
sudo apt-get install -y mysql-server mysql-client
sudo apt-get install -y php5-mysql
sudo apt-get install -y php-pear
sudo apt-get install -y php5-dev
sudo pecl install xdebug
sudo cp /vagrant/xdebug.ini /etc/php5/apache2/conf.d
sudo cp /vagrant/debug_me.php /var/www
sudo cp /vagrant/phpinfo.php /var/www
sudo /etc/init.d/apache2 restart
