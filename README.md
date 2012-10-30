Puppet tzdata Module
====================

Description
-----------

A simple puppet module to install (likely your core OS package set already) and
keep up to date the tz database / zoneinfo database / Olson database.

Examples
--------

    class { tzdata:
      ensure => latest, # default
    }

Copryight
---------

Copyright (C) 2012 Joshua Hoblitt <jhoblitt@cpan.org>
