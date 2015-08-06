# == Class: git_custom
# Use git_custom::source or git_custom::rpmforge
class git_custom {
  include git_custom::package
}
