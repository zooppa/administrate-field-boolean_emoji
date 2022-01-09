# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-boolean_emoji'
  gem.version = '0.3.0'
  gem.authors = ['Zooppa']
  gem.email = ['dev@zooppa.com']
  gem.homepage = 'https://github.com/zooppa/administrate-field-boolean_emoji'
  gem.summary = 'Boolean fields custom visualization in Administrate'
  gem.description = 'A plugin to visually display boolean fields in Administrate'
  gem.license = 'MIT'
  gem.metadata['rubygems_mfa_required'] = 'true'

  gem.required_ruby_version = '>= 2.7.5'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_runtime_dependency 'administrate', '< 1.0.0'
  gem.add_runtime_dependency 'rack', '~> 2.0', '>= 2.0.8'
  gem.add_runtime_dependency 'rails', '>= 4.2', '< 8'

  gem.add_development_dependency 'overcommit', '~> 0.58'
  gem.add_development_dependency 'rake', '~> 13.0'
  gem.add_development_dependency 'rspec', '~> 3.7'
  gem.add_development_dependency 'rubocop', '~> 1.24'
end
