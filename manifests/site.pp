import 'nodes.pp'

# # Configuration filebucket to let backup on the puppet-master server

filebucket { 'main':
    path   => false,
    server => 'puppet-master01.localdomain',
}

File {
    backup => main, }

$puppetserver = 'puppet-master01.localdomain'
