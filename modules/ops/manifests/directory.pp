class ops::directory inherits ops {
    $myhome_dir = "/home/leadel"

    case $fqdn {
        /puppet-client/ : {
            file { "$myhome_dir/development":
                ensure => directory,
                owner  => root,
                group  => smbgroup,
                mode   => '777',
            }

            file { ["$myhome_dir/development/perl", "$myhome_dir/development/ruby", "$myhome_dir/development/python"]:
                owner   => root,
                group   => smbgroup,
                mode    => '777',
                ensure  => directory,
                require => File["$myhome_dir/development"],
            }
        }

    }
}