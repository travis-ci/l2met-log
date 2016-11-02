# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'l2met/log/version'

Gem::Specification.new do |spec|
  spec.name = 'l2met-log'
  spec.version = L2met::Log::VERSION
  spec.authors = ['Dan Buch']
  spec.email = ['dan@travis-ci.org']

  spec.summary = 'Include to add a #log method to anything ever'
  spec.description = '
    Include to add a #log method to anything ever, including Ruby code and maybe
    some foods.
  '
  spec.homepage = 'https://github.com/travis-ci/l2met-log'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rubocop', '~> 0.45'
  spec.add_development_dependency 'simplecov', '~> 0.12'
end
