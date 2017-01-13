#example.pp puppet class files

notify {'begin':
  before => Class['myClass']
}

class myClass {

  notify { 'foo': }
  notify { 'bar': }

}

notify { 'end':
  require => Class['myClass']
}

include myClass
