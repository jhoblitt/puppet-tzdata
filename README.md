Puppet tzdata Module
====================

Description
-----------

A simple puppet module to install (likely your core OS package set already) and
keep up to date the tz database / zoneinfo database / Olson database.

Government entities have historically made changes to timezones and daylights
saving time periods with [little or no warning]
(http://en.wikipedia.org/wiki/Daylight_saving_time_in_Chile).  However, it
occasionally takes some time for this information to make it to the tzdata
maintainers.  It is not unheard of for updates to be applied retroactively.
Therefore it is very important that this package be kept completely up to date.

The tzdata package (or what your OS calls it) provides mostly data files and
thus has proven to be hassle free to update.  As far as the authors experience,
updating this package has never caused breakage.  While on the other hand, even
if you have an extremely tightly version controlled production system, you will
virtually always want the latest version of this package.  The Olson database
is very conservatively maintained and typically your OS vendor will evaluate
those changes yet again (certainly true in the case of RedHat) before issuing
an updated package.  For those reasons, default behavior of this package is to
ensure that the latest version is always installed.

The intended usage of this module is to include it in virtually all of your
manifests without having to pass any parameters to it.

Examples
--------

    class { tzdata:
      ensure => latest, # default
    }

or simply

    include tzdata

Copyright
---------

Copyright (C) 2012-2013 Joshua Hoblitt <jhoblitt@cpan.org>
