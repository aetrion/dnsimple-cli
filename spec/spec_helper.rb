require 'rspec'
require 'dnsimple'

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'dnsimple/cli'

unless defined?(SPEC_ROOT)
  SPEC_ROOT = File.expand_path("../", __FILE__)
end

#if ENV['DNSIMPLE_TEST_CONFIG']
  #Dnsimple::Client.load_credentials(ENV['DNSIMPLE_TEST_CONFIG'])
  #CONFIG = { 'username' => Dnsimple::Client.username, 'password' => Dnsimple::Client.password, 'base_uri' => Dnsimple::Client.base_uri, 'host' => URI.parse(Dnsimple::Client.base_uri).host }
#else
  #CONFIG = { 'username' => 'username', 'password' => 'password', 'base_uri' => 'https://api.sandbox.dnsimple.com/', 'host' => 'api.sandbox.dnsimple.com' }
  #Dnsimple::Client.base_uri = CONFIG['base_uri']
  #Dnsimple::Client.username = CONFIG['username']
  #Dnsimple::Client.password = CONFIG['password']
#end


RSpec.configure do |c|
  c.mock_framework = :mocha

  # Silent the puts call in the commands
  # c.before do
  #   @_stdout = $stdout
  #   $stdout = StringIO.new
  # end
  # c.after do
  #   $stdout = @_stdout
  # end
end

Dir[File.join(SPEC_ROOT, "support/**/*.rb")].each { |f| require f }

