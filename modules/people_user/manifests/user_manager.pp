class people_user::user_manager {
    define manage_user (
        $ensure     = absent,
        $email      = '',
        $groupName  = '',
        $groups     = [''],
        $home       = "/home/${title}",
        $manageHome = true,
        $keyType    = '',
        $rsaKey     = '',
        $shell      = '/bin/bash',
        $uid        = '',) {
        $userName = $title
        $sshDir = "$home/.ssh"

        if $ensure == 'present' {
            file { "$sshDir":
                ensure  => directory,
                group   => $groupName,
                owner   => $userName,
                mode    => 0700,
                require => User["$userName"]
            }

            file { "${sshDir}/authorized_keys":
                ensure  => file,
                group   => $groupName,
                owner   => $userName,
                mode    => 0600,
                require => File["$sshDir"]
            }

            if $rsaKey != '' {
                ssh_authorized_key { "${userName}":
                    ensure  => present,
                    key     => $rsaKey,
                    type    => $keyType,
                    user    => $userName,
                    require => File["${sshDir}/authorized_keys"]
                }

            } else {
                notify { "No ssh key set for this User": }
            }
        }

        user { "${userName}":
            ensure     => $ensure,
            gid        => $groupName,
            home       => $home,
            groups     => $groups,
            managehome => true,
            require    => Group[$groups],
            shell      => $shell,
            uid        => $uid
        }

    }
}