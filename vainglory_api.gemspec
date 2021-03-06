$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'vainglory_api/version'

Gem::Specification.new do |s|
  s.name        = 'vainglory-api'
  s.version     = VaingloryAPI::VERSION.dup
  s.date        = VaingloryAPI::RELEASE_DATE.dup
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Vainglory API'
  s.description = 'A Ruby libary wrapper for the Vainglory API'
  s.authors     = ['Chet Bortz']
  s.homepage    = 'https://github.com/cbortz/vainglory-api-ruby'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.0'

  s.add_development_dependency 'webmock', '~> 2.3'
  s.add_development_dependency 'vcr', '~> 3.0'
  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'simplecov', '~> 0.14'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
end
