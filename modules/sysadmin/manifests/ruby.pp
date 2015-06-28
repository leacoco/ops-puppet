class sysadmin::ruby {
    package { [
        'gcc',
        'g++',
        ' make',
        ' automake',
        ' autoconf',
        ' curl-devel',
        ' openssl-devel',
        ' zlib-devel',
        ' httpd-devel',
        ' apr-devel',
        ' apr-util-devel',
        ' sqlite-dev',
        'ruby-rdoc',
        ' ruby-devel',
        'rubygems']:
        ensure => present,
    }
}