class people_user::groups {
    group { 'admins':
        ensure => present,
        gid    => 500
    }

    group { 'developers':
        ensure => present,
        gid    => 700
    }

    group { 'mr.bond':
        ensure => present,
        gid    => 701,
    }

    group { 'smbgroup':
        ensure => present,
        gid    => 501,
    }
}