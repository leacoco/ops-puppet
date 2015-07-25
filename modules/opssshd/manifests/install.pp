class opssshd::install {
    package { 'openssh': ensure => present, }
}