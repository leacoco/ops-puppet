class windows_ops::host {
    file { 'c:/windows/system32/drivers/etc/hosts':
        ensure => file,
        source => 'puppet:///modules/ops/hosts',
        # # here you could also use the new standard
        # # source => 'puppet://$::server/modules/ops/hosts'
        notify => Exec['flush_dns'],
    }

    exec { 'flush_dns':
        command     => 'powershell.exe -executionpolicy unrestricted -Command "C:\windows\system32\ipconfig.exe /flushdns"',
        path        => $::path,
        refreshonly => true,
    }
}