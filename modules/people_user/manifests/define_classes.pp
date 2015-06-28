class people_user::define_classes {
    file { '/tmp/classes_in_module.txt': content => template("people_user/testclass.txt.erb") }
}