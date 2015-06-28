class people_user {
    anchor { 'people_user::begin': } ->
    class { 'people_user::access_manager': } ->
    class { 'people_user::groups': } ->
    class { 'people_user::user_manager': } ->
    class { 'people_user::users': } ->
    class { 'people_user::define_classes': } ->
    anchor { 'people_user::end': }

}