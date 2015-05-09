class wget_client::install inherits params {
    package { 'wget': ensure => installed }
}