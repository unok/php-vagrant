#
# Cookbook Name:: 
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


bash 'timezone change' do
  user 'root'
  code <<-EOF
    rm -f /etc/localtime
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
  EOF
end


bash 'install webtatic.repo' do
  user 'root'
  code <<-EOF
    rpm -vhi http://mirror.webtatic.com/yum/el6/latest.rpm
  EOF
  not_if { ::File.exists?('/etc/yum.repos.d/webtatic.repo') }
end

bash 'yum update' do
  user 'root'
  code <<-EOF
  yum update -y
  EOF
end

%w{vim-enhanced screen autoconf automake readline readline-devel git gcc-c++ flex bison  kernel-devel  zlib zlib-devel openssl-devel make bzip2 unzip libssh2 libssh2-devel sqlite sqlite-devel }.each do |pkg|
  package pkg do
    action :upgrade
  end
end


%w{php55w php55w-devel php55w-cli php55w-common php55w-pdo php55w-pecl-xdebug php55w-xml php55w-mbstring}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

bash 'remove iptables' do
  user 'root'
  code <<-EOF
    chkconfig iptables off
    service iptables stop
  EOF
end

template "/etc/php.ini" do
  source "php.ini.erb"
end

template "/etc/httpd/conf/httpd.conf" do
  source "httpd.conf.erb"
end

bash 'restart httpd' do
  user 'root'
  code <<-EOF
    chkconfig httpd on
    service httpd restart
  EOF
end