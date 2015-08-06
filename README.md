# git_custom

## Overview

This module can install git from the package manager, from source, or from RPMForge.



## Usage

### Install from package manager
    include git_custom

### Install from source
    class { 'gitbuild':
      version => '2.4.5'
    }

### Install from rpmforge
    include git_custom::rpmforge


## Limitations

This currently is only for RHEL6 / CentOS 6 / *EL 6

## Development

https://github.com/andrewfraley/puppet-git_custom
