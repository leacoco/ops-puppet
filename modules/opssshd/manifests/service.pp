class opssshd::service {
    service { 'sshd':
        ensure     => running,
        hasrestart => true,
        hasstatus  => true,
        enable     => true,
        require    => Class['opssshd::config'],
    }
}