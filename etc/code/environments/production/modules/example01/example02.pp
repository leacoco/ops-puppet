class first {
  notify { 'I am the First Class': }
}
# == Class: second
#
class second {
  notify { 'I am the Second Class': }
}

# == Class: classa
#
class classa {
  include ::first
}

# == Class: classb
#
class classb {
  include ::second
}

Class['classb'] -> Class['classa']

include classa
include classb
#class { 'classa': }
