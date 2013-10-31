vagrant-skeleton
================

This is my vagrant skeleton for multi-purpose tests.

You might be asking yourself how to use this apache module, right?

```
apache::vhost { 'yourvhostname.dev':
    docroot => '/var/www/yourvhostname',
    domain => 'yourvhostname.dev',
    vhost_name => 'yourvhostname'
}
```

Note that this works in default vagrant machine. I did not test in another machines but I am pretty sure that apache is not apache in CentOS...
