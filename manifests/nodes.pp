node 'puppet-client01.localdomain' {
    notify { "yeah i am present, Hostname = ${::fqdn}": }
    include wget_client
}
