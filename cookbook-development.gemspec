# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cookbook/development/version'

Gem::Specification.new do |spec|
  spec.name          = 'cookbook-development'
  spec.version       = Cookbook::Development::VERSION
  spec.authors       = ['Rally Software Development Corp']
  spec.email         = ['rallysoftware-cookbooks@rallydev.com']
  spec.description   = %q{Rally Software Development Corp cookbook development}
  spec.summary       = %q{Rally Software Development Corp cookbook development}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'foodcritic'
  spec.add_dependency 'berkshelf'
end