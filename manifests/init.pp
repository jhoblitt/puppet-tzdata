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

  $tzdata_package_name = $operatingsystem ? {
    gentoo  => 'sys-libs/timezone-data',
    default => 'tzdata', # el5.x, el6.x
  }

  package{ $tzdata_package_name:
    ensure => $ensure,
  }
}
