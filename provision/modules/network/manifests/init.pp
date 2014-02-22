class network {
  file {'/etc/hosts':
    owner => 'root',
    group => 'root',
    mode  => '0644',
    content => template('network/hosts.erb'),
  }
}
