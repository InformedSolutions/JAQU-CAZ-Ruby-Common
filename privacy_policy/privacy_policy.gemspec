# frozen_string_literal: true

require_relative 'lib/privacy_policy/version'

Gem::Specification.new do |spec|
  spec.name = 'privacy_policy'
  spec.version = PrivacyPolicy::VERSION
  spec.authors = 'JAQU'
  spec.summary = 'Shared privacy policy between pages'
  spec.homepage = 'https://github.com/InformedSolutions/JAQU-CAZ-Ruby-Common/tree/develop/privacy_policy'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.required_ruby_version = '>= 3.0.3'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'haml'
  spec.add_dependency 'rails', '6.1.4.3'

  spec.add_development_dependency 'bundler', '~> 2.2.32'
end
