class people_user::users {
    @people_user::user_manager::manage_user { "leadel":
        ensure    => present,
        groups    => ['admins', 'developers', 'smbgroup'],
        groupName => 'admins',
        keyType   => 'rsa',
        rsaKey    => "AAAAB3NzaC1yc2EAAAABJQAAAQEAi3cMymqTbWu+eFjwcRHssa7aOf4Lj8vxP4gpUEC3hf61HsnJ8TlAFKpap+/i0HR3RRvMjCK9cjCDVQUw1fupC7o2cRG5vMx8+Ajp/o+ipKJ5wKxBIlH61+0mmPdab7L+Ad9mpyGO73KkJS91TPGGJEdDmA9dNCZqKSkZ7w7dsfsTWmQjt97sAT+vPJLvamCYOhRtJfjwPHY/oOM+SDk2PKSm5LTx71nQRfD9CWkF8EQxytuM0YBH/ZPyBMMYIFYaMVQx6NP3ZY0oSlsOU+F6tW6SAt9k8jbi5stahU+pNChiCrq6vQwZbXhGEW3zGjOivIzxOeVuv88XGItcvFYRgw==",
        uid       => '5000009'
    }

    @people_user::user_manager::manage_user { "mr.lng":
        ensure    => present,
        groups    => ['admins', 'developers'],
        groupName => 'admins',
        keyType   => 'rsa',
        rsaKey    => "AAAAB3NzaC1yc2EAAAABIwAAAQEA4Pb86XLzFl5xZzJAT596N2+g5HwT4a/agv163CDwKMG7X1EusEf7mWZQrutPVob5Id1vD5j0g6DwvBbw7MAT914LRfcd1CbH5KIdoF+nbUzfJDKHUyLtA6Yalc7JZgM1IO58bPXL2eMGnV1AIG9aZOpcpMgr/JiYqn7FtnEnDoZoCxXQnDcGAwsyNz2rHpLV64c/VupmsCzDyKimUsWLzQxh2OAOzEuDgml/3U2PFx2v0L4M4ITPV7brkh5pfY4GtkeaQSBL966Ajjly6ynaQCKrstYJqDdnWX4pUtDZZG4e0x4fBJxd9pIH47ZUwsnbXBl/U1DgSkqCO98lijYy1w==",
        uid       => '114'
    }
}
