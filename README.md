php-vagrant
=====================

�ե��������
-----------

    +-- chef        chef �ѥե����
    +-- src
    |    +- htdocs  DocumentRoot
    +-- vagrant     vagrant �ѥե����
    

���ѽ���
-------

�ޤ���git �� vagrant �򥤥󥹥ȡ��뤷�Ƥ���������

Windows �����ϡ� chocolatey (http://chocolatey.org/) �ǥ��󥹥ȡ��뤹��Τ�������Ǥ���


��ư��ˡ
--------

    localhost% git clone https://github.com/unok/php-vagrant.git
    localhost% cd php-vagrant/vagrant
    localhost% vagrant up


IP���ɥ쥹�γ�ǧ
---------------

    localhost% cd php-vagrant/vagrant
    localhost% vagrant ssh
    php-vagrant% /sbin/ifconfig | grep inet

�����ɽ��������Τ� IP �Ȥʤ�ޤ�


�����ɤν�����ɽ��
----------------

php-vagrant/src/htdocs/ �� http://�嵭IP���ɥ쥹/ �Ȥʤ�ޤ���
index.php ���������Ƴ�ǧ���ƤߤƤ�������


