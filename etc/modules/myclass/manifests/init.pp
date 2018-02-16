## class definition for testing hiera

class myclass {
  $message_of_the_day = "Hallo my name is Leadel NG"
  
  file { '/tmp/motd':
    ensure  => file,
    content => $message_of_the_day,
  }
}
