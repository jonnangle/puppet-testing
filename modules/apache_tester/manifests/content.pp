# == Class: apache_tester::content
#
# This class delivers some content into the Apache docroot.
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

class apache_tester::content {
file { '/var/www/html/test.html':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => 'Hello world',
  }
}
