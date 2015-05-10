class samba::install inherits samba {
    package { 'samba': ensure => present, }
}