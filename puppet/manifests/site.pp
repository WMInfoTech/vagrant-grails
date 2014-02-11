class { 'apt': }

apt::ppa { 'ppa:groovy-dev/grails': }

package { 'grails-2.2.0':
  ensure  => installed,
  require => Apt::Ppa['ppa:groovy-dev/grails'],
}

package { ['openjdk-6-jdk', 'openjdk-6-jre']:
  ensure => purged,
}

package { 'openjdk-7-jdk':
  ensure => installed,
  before => Ini_setting['java_home'],
}

ini_setting { 'java_home':
  ensure            => present,
  path              => '/etc/environment',
  section           => '',
  key_val_separator => '=',
  setting           => 'JAVA_HOME',
  value             => '"/usr/lib/jvm/java-7-openjdk-amd64"',
}
