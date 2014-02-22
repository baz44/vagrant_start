class test {
  file {'/tmp/test':
    owner => 'vagrant',
    group => 'vagrant',
    mode  => '0666',
    content => 'testfile',
  }
}
