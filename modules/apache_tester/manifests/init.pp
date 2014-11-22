# == Class: apache_tester
#
# This class installs Apache and a configuration file.
#
# === Parameters
#
# None.
#
# === Variables
#
# Nada.
#
# === Examples
#
# Please.
#
# === Authors
#
# Jon Nangle <jonnangle@users.noreply.github.com>
#
# === Copyright
#
# Copyright 2014 Jon Nangle, unless otherwise noted.
#
class apache_tester {
  include apache_tester::content
  
  package { 'httpd':
    ensure => installed
  }->
  file { '/etc/httpd/conf/httpd.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('apache_tester/httpd.conf'),
  }~>
  service { 'httpd':
    ensure => running
  }
}
