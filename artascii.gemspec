# frozen_string_literal: true

require_relative 'lib/artascii/version'

Gem::Specification.new do |spec|
  spec.name          = 'artascii'
  spec.version       = Artascii::VERSION
  spec.authors       = ['Lovepreet Singh']
  spec.email         = ['Lovepreetkaul23@gmail.com']

  spec.summary       = 'Project to generate Ascii art from images.'
  spec.homepage      = 'https://github.com/lovepreetkaul/artascii'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/lovepreetkaul/artascii/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'mini_magick', '~> 4.11'
  spec.add_development_dependency 'rspec'
end
