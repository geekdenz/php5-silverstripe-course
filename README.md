# php5-silverstripe-course
PHP 5 - SilverStripe Course Material and Vagrant VM for developing SilverStripe Applications.

## How to use

```cd vagrant
./install.bash
./run.bash
```

### Install Composer

See [https://getcomposer.org/download/](https://getcomposer.org/download/):

```
mkdir ~/bin
pushd ~/bin
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === '41e71d86b40f28e771d4bb662b997f79625196afcca95a5abf44391188c695c6c1456e16154c75a211d238cc3bc5cb47') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
ln -s composer.phar composer
echo 'export PATH=~/bin:$PATH >> ~/.bashrc
popd
cd ..
rm -rf project

composer create-project silverstripe/installer project 3.3.1
```
