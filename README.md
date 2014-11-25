puppet-testing
==============

This is a (very) small demo to show off some tools for testing Puppet:

  * puppet-lint
  * puppet-rspec
  * serverspec

You'll need the vagrant-serverspec plugin to run the serverspec tests. You can
install this by running `vagrant plugin install vagrant-serverspec`

To run the lint and rspec tests, cd into modules/apache_tester and use the
following rake tasks:

    rake lint             # Run puppet-lint
    rake rspec            # Run all RSpec code examples

To run the serverspec tests, run `vagrant up` from the top level directory.
