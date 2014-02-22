# default.pp main vagrant puppet provisioning file

stage {'init': before => Stage["main"]}
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

class apt_update {
  exec {'apt-get update': }
}

class {'apt_update':
  stage => init
}

include puppet
include network

if $hostname == 'puppet' {
  include puppet::server
}
