define git::fetch($path,
									$remote,
                 $extras=undef,
                 $user="nobody") {
    exec { "git::fetch-$name":
        cwd => $path,
        command => "git fetch $extras $remote",
        user => $user,
        logoutput => "true",
    }
}
