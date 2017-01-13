## class definition for testing hiera

class myclass {
  file { '/tmp/motd':
    ensure  => file,
    content => hiera('message_of_the_day'),
  }
}
include myclass
