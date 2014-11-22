class apache_tester {
  include apache_tester::content
  
  package { 'httpd':
    ensure => installed
  }->
  file { "/etc/httpd/conf/httpd.conf":
    owner   => root,
    group   => 'root',
    mode    => 644,
    content => template('apache_tester/httpd.conf'),
    ensure  => file,
  }~>
  service { 'httpd':
    ensure => running
  }
}
