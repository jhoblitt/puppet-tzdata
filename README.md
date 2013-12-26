Puppet tzdata Module
====================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-tzdata.png)](https://travis-ci.org/jhoblitt/puppet-tzdata) 

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
    * [Basic](#basic)
    * [Always Update](#always-update)
    * [Install Only](#install-only)
    * [Uninstall](#uninstall)
4. [Limitations](#limitations)
    * [Tested Platforms](#tested-platforms)
5. [Versioning](#versioning)
6. [Support](#support)
7. [See Also](#see-also)


Overview
--------

Install/update the Olson timezone database


Description
-----------

A simple puppet module to install (likely part of your core OS package set) and
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


Usage
-----

### Basic

```puppet
    include tzdata
```

### Always Update

This is the default behave and is semanticaaly the same as including the class
in the manifest instead of declaring it.

```puppet
    class { tzdata:
      ensure => latest, # default
    }
```

### Install Only

```puppet
    class { tzdata:
      ensure => present,
    }
```

### Uninstall

```puppet
    class { tzdata:
      ensure => absent,
    }
```


Limitations
-----------

### Tested Platforms

* el5.x
* el6.x
* Gentoo 13.0


Versioning
----------

This module is versioned according to the [Semantic Versioning
2.0.0](http://semver.org/spec/v2.0.0.html) specification.


Support
-------

Please log tickets and issues at
[github](https://github.com/jhoblitt/puppet-tzdata/issues)


See Also
--------

 * [Time Zone Database](http://www.iana.org/time-zones)

