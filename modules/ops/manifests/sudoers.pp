class ops::sudoers {
    $su_path = "/etc/sudoer.d"

    File {
        ensure => present,
        owner  => 'root',
        group  => 'root',
        mode   => '0600',
    }

    package { 'sudo': ensure => present, }

    file { "$su_path":
        ensure  => directory,
        mode    => 0440,
        require => Package['sudo'],
    }

    file { "$su_path/admins":
        source  => 'puppet:///modules/ops/sudo.admins',
        require => File["$su_path"],
    }

    file { "/etc/sudoers":
        source  => 'puppet:///modules/ops/sudoers',
        require => Package['sudo'],
    }

}