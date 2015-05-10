node 'puppet-client01.localdomain' {
    notify { "yeah i am present, Hostname = ${::fqdn}": }
    include ::wget_client
    include ::sysadmin
    include ::people_user
    include ::ops
    include ::samba
}

node 'puppet-master01.localdomain' {
    include ::wget_client
    include ::people_user
    include ::ops
    include ::samba
}

# # my Windows PC
node 'leadel-pc.hitronhub.home' {
    notify { "Installed on Windows": message => "Woow Leadel Thank you" }
    include ::windows_ops
}

node 'eth-windows-server01.localdomain' inherits 'leadel-pc.hitronhub.home' {

}