php-vagrant
=====================

フォルダ構成
-----------

    +-- chef        chef 用フォルダ
    +-- src
    |    +- htdocs  DocumentRoot
    +-- vagrant     vagrant 用フォルダ
    

利用準備
-------

まず、git と vagrant をインストールしてください。

Windows の方は、 chocolatey (http://chocolatey.org/) でインストールするのがお勧めです。


起動方法
--------

    localhost% git clone https://github.com/unok/php-vagrant.git
    localhost% cd php-vagrant/vagrant
    localhost% vagrant up


IPアドレスの確認
---------------

    localhost% cd php-vagrant/vagrant
    localhost% vagrant ssh
    php-vagrant% /sbin/ifconfig | grep inet

これで表示されるものが IP となります


コードの修正と表示
----------------

php-vagrant/src/htdocs/ が http://上記IPアドレス/ となります。
index.php 等修正して確認してみてください


