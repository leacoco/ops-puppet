class people_user {
    include people_user::access_manager
    include people_user::groups
    include people_user::user_manager
    include people_user::users

}