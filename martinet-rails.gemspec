# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'martinet/rails/version'

Gem::Specification.new do |spec|
  spec.name = 'martinet-rails'
  spec.version = Martinet::Rails::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Tang Rufus']
  spec.email = ['tangrufus@gmail.com']
  spec.homepage = 'https://github.com/TangRufus/martinet-rails'
  spec.summary = 'Automatically load and include all common Martinet features for a standard Rails environment'
  spec.description = 'Automatically load and include all common Martinet features for a standard Rails environment'
  spec.license = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = 'lib'

  spec.cert_chain  = ['certs/tangrufus.pem']
  spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')

  spec.add_dependency 'martinet', '>= 0.2.0', '< 1.0.0'

  spec.add_development_dependency 'bundler', '~> 1.13', '>= 1.13.6'
  spec.add_development_dependency 'rake', '~> 11.3', '>= 11.3.0'
  spec.add_development_dependency 'minitest', '~> 5.10', '>= 5.10.1'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1', '>= 1.1.9'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0', '>= 1.0.3'
  spec.add_development_dependency 'appraisal', '~> 2.1.0'
  spec.add_development_dependency 'activerecord', '>= 5.0.0'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
  spec.add_development_dependency 'rubocop', '>= 0.45.0', '< 1'
end
