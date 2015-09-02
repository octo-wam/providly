# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'providly/version'

Gem::Specification.new do |spec|
  spec.name = 'providly'
  spec.version = Providly::VERSION
  spec.authors = ['Jeremy Venezia']
  spec.email = ['veneziajeremy@gmail.com']

  spec.summary = %q{Simple ruby gem that checks if email domain name is a provider.}
  spec.description = %q{Providly is a simple ruby gem that checks if email domain name is a provider.}
  spec.homepage = 'https://github.com/elcurator/providly'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
end
