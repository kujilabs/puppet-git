define git::pull($path,
                 $extras=undef,
                 $user="nobody") {
    exec { "git::pull-$name":
        cwd => $path,
        command => "git pull $extras",
        user => $user,
        logoutput => "true",
    }
}