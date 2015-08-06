# This installs the default git package with the system's package manager
class git_custom::package {
  package {'git':
    ensure => present,
  }
}