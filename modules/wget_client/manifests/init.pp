class wget_client inherits wget_client::params {
    notify { "$module_name installed": }
    anchor { 'wget_client::begin': } ->
    class { 'wget_client::install': } ->
    anchor { 'wget_client::end': }
}