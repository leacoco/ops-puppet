class samba::service inherits samba {
    Service {
        ensure     => running,
        hasrestart => true,
        hasstatus  => true,
        enable     => true,
    }

    service { ["smb", "nmb"]: }
}