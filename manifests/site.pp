######################################################################
# Stage Definition. Stages will allow you to control resource managements to nodes
######################################################################
stage { 'init': before => Stage['ops'], }

stage { 'ops': before => Stage['main'], }

stage { 'base': before => Stage['ops'], }

import 'nodes.pp'

# # Configuration filebucket to let backup on the puppet-master server

filebucket { 'main':
    path   => false,
    server => 'puppet-master01.localdomain',
}

File {
    backup => main, }

$puppetserver = 'puppet-master01.localdomain'
