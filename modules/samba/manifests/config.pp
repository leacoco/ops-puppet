class samba::config inherits samba {
    $samba_conf = '/etc/samba'

    File {
        group => 'root',
        owner => 'root',
        mode  => '755',
    }

    file { "$samba_conf":
        ensure => directory,
        purge  => true,
        source => 'puppet:///modules/samba/etc.smb',
    }

    file { "$samba_conf/smb.conf":
        source  => "puppet:///modules/samba/${fqdn}_smb.conf",
        require => File["$samba_conf"],
    }

}