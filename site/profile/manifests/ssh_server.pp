class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCk+pqsxrrt0VQ8rJC1ygtLCd2ucR7JdVPADXF7S2GT9cxXtuknr6q/6+W2i77+9kPV4Bu2B3ZjE1v9sgtRemubExDsHQ083F4Lcjp0eNAk8mekjc0+eZCEF8p6MCUrNiRmr+808UI+Dt4osMObM9hbrI5dH4vCQiTs2iDto8WCnI9dAe1nU5gP2Y/a/bzT0KqfdNvtazRON6OrO9rUUoN2R9xHdQDBJmXmdluMbj1M74tDPiOzHL48KiACOKGN+Oqwk5vqteSG1TQqyK3Lyt/vtC4yFKE/xz8ykinTqJgCnupcoP9vY5F1PY8KoG/Dd+5ufW+feamKIPnuyNGXHdFJ',
  }  
}
