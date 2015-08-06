class git_custom::source (
  $version    = '2.4.5'
){
  $prereqs = [
      'gcc',
      'make',
      'zlib-devel',
      'openssl-devel',
      'cpio',
      'expat-devel',
      'libcurl-devel',
      'gettext-devel',
      'perl-ExtUtils-CBuilder',
      'perl-ExtUtils-MakeMaker'
    ]
    ensure_packages($prereqs)

  git_custom::netinstall { "git":
    url => "https://www.kernel.org/pub/software/scm/git/git-${version}.tar.gz",
    extracted_dir => "git-${version}",
    destination_dir => "/tmp",
    postextract_cwd => "/tmp/git-${version}",
    postextract_command => "/tmp/git-${version}/configure && make && make install"
  }
  
}