class ops {
    include ops::iptables
    include ops::etc_files
    include ops::directory
    include ops::sudoers
}