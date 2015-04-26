lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

if RUBY_VERSION < '2.0.0'
  require 'sensu-plugins-clockworksms'
else
  require_relative 'lib/sensu-plugins-clockworksms'
end

# pvt_key = '~/.ssh/gem-private_key.pem'

Gem::Specification.new do |s|
  s.authors                = ['Yieldbot, Inc. and contributors']
  # s.cert_chain             = ['certs/sensu-plugins.pem']
  s.date                   = Date.today.to_s
  s.description            = 'Sensu plugins for clockworksms'
  s.email                  = '<sensu-users@googlegroups.com>'
  s.executables            = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  s.homepage               = 'https://github.com/sensu-plugins/sensu-plugins-clockworksms'
  s.license                = 'MIT'
  s.metadata               = { 'maintainer'         => '',
                               'development_status' => 'unmaintained',
                               'production_status'  => 'unstable - testing recommended'
  }
  s.name                   = 'sensu-plugins-clockworksms'
  s.platform               = Gem::Platform::RUBY
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 1.9.3'
  # s.signing_key            = File.expand_path(pvt_key) if $PROGRAM_NAME =~ /gem\z/
  s.summary                = 'Sensu plugins for clockworksms'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuPluginsClockworksms::Version::VER_STRING

  s.add_runtime_dependency 'clockwork',    '1.1.0'
  s.add_runtime_dependency 'timeout',      '0.0.1'
  s.add_runtime_dependency 'sensu-plugin', '1.1.0'

<<<<<<< HEAD
  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
  s.add_development_dependency 'rubocop',                   '0.30.0'
  s.add_development_dependency 'rspec',                     '~> 3.1'
  s.add_development_dependency 'bundler',                   '~> 1.7'
  s.add_development_dependency 'rake',                      '~> 10.0'
  s.add_development_dependency 'github-markup',             '~> 1.3'
  s.add_development_dependency 'redcarpet',                 '~> 3.2'
  s.add_development_dependency 'yard',                      '~> 0.8'
  s.add_development_dependency 'pry',                       '~> 0.10'
=======
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'rubocop', '~> 0.17.0'
  s.add_development_dependency 'rspec', '~> 3.1'
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'github-markup'
  s.add_development_dependency 'redcarpet'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'pry'
>>>>>>> 86c88f7cfdd15e14ead6f027075f7a216f43f646
end
