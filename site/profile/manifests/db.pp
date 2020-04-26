class profile::base {
  user {'admin':
    ensure => present
  }
}

class profile::db {
}
