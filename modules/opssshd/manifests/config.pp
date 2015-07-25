class opssshd::config {
    file { '/etc/ssh/sshd_config':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
        source  => 'puppet:///modules/opssshd/sshd_config',
        require => Class['opssshd::install'],
        notify  => Class['opssshd::service'],
    }
}