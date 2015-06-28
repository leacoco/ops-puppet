######################################################################
# node definition
#####################################################################

node base {
    class { 'wget_client': stage => init }

    class { 'ops': stage => ops }

    class { 'people_user': stage => ops }
}

node 'puppet-client01.localdomain' inherits base {
    notify { "yeah i am present, Hostname = ${::fqdn}": }
    include ::sysadmin
    include ::samba
}

node 'puppet-master01.localdomain' inherits base {
    include ::samba
}

# # my Windows PC
node 'leadel-pc.hitronhub.home' {
    notify { "Installed on Windows": message => "Woow Leadel Thank you" }
    include ::windows_ops
}

node 'eth-windows-server01.localdomain' inherits 'leadel-pc.hitronhub.home' {

}