class puppet {
  package {'puppet':
    ensure => 'latest'
  }

  service {'puppet':
    enable => true,
    ensure => running,
    require => Package['puppet'],
  }
}
