# == Class: tzdata
#
# A simple puppet module to install (likely your core OS package set
# already) and keep up to date the tz database / zoneinfo database / Olson
# database.
#
# === Parameters
#
# ensure
#   present|absent|latest - default value is latest due to the high important
#   of the tzdata package being up to date and the very low risk of brekage.
#
# === Examples
#
#  class { tzdata:
#    ensure => latest, # default
#  }
#
# === Authors
#
# Joshua Hoblitt <jhoblitt@cpan.org>
#
# === Copyright
#
# Copyright (C) 2012 Joshua Hoblitt
#

class tzdata ($ensure = latest) {
  validate_re($ensure, '^present$|^absent$|^latest$')

  case $::osfamily {
    redhat: {
      # el5.x, el6.x
      $tzdata_package_name = 'tzdata'
    }
    default: {
      case $::operatingsystem {
        # gentoo will not have it's own osfamily until facter 2.x
        # https://github.com/puppetlabs/facter/commit/c61894994a5884fc8ac44f9e780d4b062097d124
        gentoo: {
          $tzdata_package_name = 'sys-libs/timezone-data'
        } 
        default: {
          fail("Module ${module_name} is not supported on ${::operatingsystem}")
        }
      }
    }
  }

  package{ $tzdata_package_name:
    ensure => $ensure,
  }
}
