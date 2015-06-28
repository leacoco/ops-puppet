class ops::ssh_keys {
    @@sshkey { $hostname:
        type => rsa,
        key  => $sshdsakey,
    }

    Sshkey <<| |>>
}