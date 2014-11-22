require 'spec_helper'

describe "apache_tester" do
  it { should compile }
  it { should contain_class('apache_tester::content') }
  it { should contain_package('httpd') }
  it { should contain_service('httpd').with_ensure('running') }
  it do
    should contain_file('/etc/httpd/conf/httpd.conf') \
    .with_content(/^Listen 80$/) \
    .with_content(/^ServerSignature Off$/)
  end
end
