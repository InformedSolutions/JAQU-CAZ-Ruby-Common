# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.platform = Gem::Platform::RUBY
  spec.name = 'JAQU-CAZ-Ruby-Common'
  spec.version = '1.0'
  spec.authors = 'JAQU'
  spec.summary = 'A repository for housing shared/common components used by JAQU CAZ UIs'
  spec.homepage = 'https://github.com/InformedSolutions/JAQU-CAZ-Ruby-Common'
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

  spec.add_development_dependency 'bundler', '~> 2.2.32'
  # This is our gem dependency
  spec.add_dependency 'custom_logger'
end
