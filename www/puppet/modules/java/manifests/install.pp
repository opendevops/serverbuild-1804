# Class: git
# ===========================
#
# Full description of class git here.
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
#    class { 'git':
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
class java::install (
  # eg. false or "openjdk-8-jre"
  $openjdk_version = undef,
  # maven - builds java project
  $install_maven = undef,
) {


  #
  # * Install openjdk
  #
  if $openjdk_version == true {
    package { $openjdk_version:
      ensure  => installed,
      require => Exec['apt-upgrade']
    }
  }

  #
  # * Install maven
  #
  if $install_maven == true {
    package { 'maven':
      ensure  => installed,
      require => Exec['apt-upgrade']
    }
  }

}
