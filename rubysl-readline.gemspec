# coding: utf-8
require './lib/rubysl/readline/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-readline"
  spec.version       = RubySL::Readline::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library readline.}
  spec.summary       = %q{Ruby standard library readline.}
  spec.homepage      = "https://github.com/rubysl/rubysl-readline"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["ext/rubysl/readline/extconf.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-prettyprint", "~> 1.0"
end
