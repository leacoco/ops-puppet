node 'puppet-client01.localdomain' {
    notify { "yeah i am present, Hostname = ${::fqdn}": }

    notify { "Just let me know this enviroment works well": }

    notify { "Hallo Nicole , Hallo Leadel , Hallo Jamie and Joy": }
}
