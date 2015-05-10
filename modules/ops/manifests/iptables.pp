class ops::iptables {
    service { 'iptables':
        ensure => stopped,
        enable => false,
    }
}