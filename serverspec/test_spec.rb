require_relative 'spec_helper'

describe port(80) do
  it { should be_listening }
end

describe process('httpd') do 
  it { should be_running }
end

describe command('curl http://127.0.0.1/test.html') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Hello world/ }
end

