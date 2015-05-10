class samba {
    notify { "Installation of Samba Class": }
    anchor { 'samba::begin': } ->
    class { 'samba::install': } ->
    class { 'samba::config': } ->
    class { 'samba::service': } ->
    anchor { 'samba::end': }
}