class ops::etc_files {
    File {
        ensure => present,
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }

    file { '/etc/hosts': source => 'puppet:///modules/ops/hosts', }
}