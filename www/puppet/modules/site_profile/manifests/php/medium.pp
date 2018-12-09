# Class: site_profile
# ===========================
#
# Full description of class site_profile here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'site_profile':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class site_profile::php::medium (
) {


  class { 'php':
    # php config
    max_children        => 250,
    max_spare_servers   => 40,
    min_spare_servers   => 20,
    post_max_size       => '30M',
    process_manager     => 'static',
    start_servers       => 40,
    upload_max_filesize => '30M',
  }

  class { 'phpcache':
    # opcache
    interned_strings_buffer => 128,
    max_accelerated_files   => 20000,
    memory_consumption      => 1024,
    # memcached
    memory                  => 1024,
  }

}
