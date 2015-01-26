
#### [Current]
 * [826b65d](../../commit/826b65d) - __(Joshua Hoblitt)__ replace Modulefile vs metadata.json
 * [492a670](../../commit/492a670) - __(Joshua Hoblitt)__ replace rspec-system with beaker
 * [a6c63ee](../../commit/a6c63ee) - __(Joshua Hoblitt)__ update fixtures stdlib to 4.2.0
 * [89668ea](../../commit/89668ea) - __(Joshua Hoblitt)__ Merge pull request [#3](../../issues/3) from jhoblitt/feature/future_parser

add future parser to travis matrix
 * [0f3fda4](../../commit/0f3fda4) - __(Joshua Hoblitt)__ add future parser to travis matrix

#### v1.1.0
 * [9f86e5c](../../commit/9f86e5c) - __(Joshua Hoblitt)__ bump version to v1.1.0
 * [da7d5ce](../../commit/da7d5ce) - __(Joshua Hoblitt)__ Merge pull request [#2](../../issues/2) from jhoblitt/debian_support

Debian support
 * [9362cb8](../../commit/9362cb8) - __(Joshua Hoblitt)__ add $::osfamily == debian support
 * [75d0cce](../../commit/75d0cce) - __(Joshua Hoblitt)__ rm old Changelog
 * [c2b3317](../../commit/c2b3317) - __(Joshua Hoblitt)__ Merge pull request [#1](../../issues/1) from jhoblitt/system-tests

add extremely basic rspec-system tests
 * [dcb9013](../../commit/dcb9013) - __(Joshua Hoblitt)__ add extremely basic rspec-system tests

#### v1.0.3
 * [7ddb66c](../../commit/7ddb66c) - __(Joshua Hoblitt)__ bump version to v1.0.3
 * [dab7830](../../commit/dab7830) - __(Joshua Hoblitt)__ fix rspec-puppet 1.0.1 deprecation warning

DEPRECATION: include_class is deprecated. Use contain_class instead.

 * [11b2f55](../../commit/11b2f55) - __(Joshua Hoblitt)__ add :require => false to all Gemfile entries
 * [c046174](../../commit/c046174) - __(Joshua Hoblitt)__ sort .gitignore
 * [7c2c63e](../../commit/7c2c63e) - __(Joshua Hoblitt)__ tidy up .fixtures.yml
 * [6a84992](../../commit/6a84992) - __(Joshua Hoblitt)__ trim travis test matrix
 * [27b6bbd](../../commit/27b6bbd) - __(Joshua Hoblitt)__ update README boilerplate sections

#### v1.0.2
 * [3564ef8](../../commit/3564ef8) - __(Joshua Hoblitt)__ bump version to v1.0.2
 * [3f995f8](../../commit/3f995f8) - __(Joshua Hoblitt)__ fix README typos
 * [7b9ac15](../../commit/7b9ac15) - __(Joshua Hoblitt)__ support Gentoo as an $::osfamily

Instead of supporting it as an $::operatingsystem.  This may break
installations using old versions of facter but it's suspected that most Gentoo
installations will be using recent versions of puppet/facter.
the commit message for your changes. Lines starting

 * [553ce56](../../commit/553ce56) - __(Joshua Hoblitt)__ doc update
 * [b2256a8](../../commit/b2256a8) - __(Joshua Hoblitt)__ rm tests dir
 * [8b098a4](../../commit/8b098a4) - __(Joshua Hoblitt)__ set stdlib requirement to 3.0.0
 * [8191dcf](../../commit/8191dcf) - __(Joshua Hoblitt)__ puppet-lint should ignore pkg/**
 * [77fbabd](../../commit/77fbabd) - __(Joshua Hoblitt)__ add puppet 3.3.0 to travis test matrix
 * [ae7e5df](../../commit/ae7e5df) - __(Joshua Hoblitt)__ exclude spec/fixtures/** from puppet-syntax checking
 * [47cf09f](../../commit/47cf09f) - __(Joshua Hoblitt)__ Merge remote-tracking branch 'skel/master'
 * [ed6a68b](../../commit/ed6a68b) - __(Joshua Hoblitt)__ ignore patch related files *{.orig,.rej,.patch}
 * [6a67990](../../commit/6a67990) - __(Joshua Hoblitt)__ add puppet-syntax support
 * [435661d](../../commit/435661d) - __(Joshua Hoblitt)__ add travis-ci build placard
 * [fb932f9](../../commit/fb932f9) - __(Joshua Hoblitt)__ add example spec test
 * [5fed02b](../../commit/5fed02b) - __(Joshua Hoblitt)__ exclude travis-ci testing of puppet < 3.2 with ruby >= 2.0
 * [4050f0d](../../commit/4050f0d) - __(Joshua Hoblitt)__ add a default .travis.yml
 * [c46ff1e](../../commit/c46ff1e) - __(Joshua Hoblitt)__ git ignore Gemfile.lock
 * [e86f789](../../commit/e86f789) - __(Joshua Hoblitt)__ install ruby gems from https://rubygems.org instead of :rubygems

To resolve this warning:

    The source :rubygems is deprecated because HTTP requests are insecure.
    Please change your source to 'https://rubygems.org' if possible, or
    'http://rubygems.org' if not.

 * [95df6b6](../../commit/95df6b6) - __(Joshua Hoblitt)__ first commit

#### v1.0.1
 * [d40b9af](../../commit/d40b9af) - __(Joshua Hoblitt)__ update Changelog for v1.0.1 release
 * [e5b328e](../../commit/e5b328e) - __(Joshua Hoblitt)__ add basic rspec tests
 * [7023943](../../commit/7023943) - __(Joshua Hoblitt)__ add .gitignore
 * [80344a0](../../commit/80344a0) - __(Joshua Hoblitt)__ change module version to v1.0.1
 * [9f01de3](../../commit/9f01de3) - __(Joshua Hoblitt)__ add a simple Changelog for the forge
 * [aea9836](../../commit/aea9836) - __(Joshua Hoblitt)__ enable travis-ci support
 * [28d8ab3](../../commit/28d8ab3) - __(Joshua Hoblitt)__ change license from GPLv2 or later to Apache 2.0
 * [f02e585](../../commit/f02e585) - __(Joshua Hoblitt)__ add a Rakefile with a lint target + setup for rspec with puppetlabs_spec_helper

+ Fix a trivial whitespace issue for puppet lint

 * [14fc038](../../commit/14fc038) - __(Joshua Hoblitt)__ set version to 1.0.0
 * [9d472bd](../../commit/9d472bd) - __(Joshua Hoblitt)__ add additional description
 * [0c03d12](../../commit/0c03d12) - __(Joshua Hoblitt)__ fail by default unless the $::osfamily or $::operationsystem is known
 * [3bd07ac](../../commit/3bd07ac) - __(Joshua Hoblitt)__ add dep on stdlib 0.1.5

validate_re() is used in class tzdata to validate class params.

 * [b06df59](../../commit/b06df59) - __(Joshua Hoblitt)__ fwv
