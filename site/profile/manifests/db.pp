class profile::base {
  user {'admin':
    ensure => present
  }
}
[fletch@localhost manifests]$ cat db.pp 
class profile::db {
}
