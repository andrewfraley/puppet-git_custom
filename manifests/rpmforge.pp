class git_custom::rpmforge {

  # Setup yum repo
  exec { 'Setup rpm forge':
    command => '/usr/bin/yum -y localinstall http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm',
    unless => '/bin/rpm -qa | grep ^git',
  }->
  
  # Install RPM forge version of git
  exec {'Install git':
    command => '/usr/bin/yum -y install --enablerepo=rpmforge-extras git',
    unless => '/bin/rpm -qa | grep ^git',
  }->

  # Remove repo
  exec { 'remove rpmforge':
    command => '/usr/bin/yum -y remove rpmforge-release',
    refreshonly => true,
    subscribe => Exec['Install git'],
  }

}



