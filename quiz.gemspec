# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quiz/version'

Gem::Specification.new do |spec|
  spec.name          = "quiz"
  spec.version       = Quiz::VERSION
  spec.authors       = ["Haniel"]
  spec.email         = ["alu0100721690@ull.edu.es"]
  spec.summary       = %q{DSL Para Examenes}
  spec.description   = %q{DSL Para Examenes}
  spec.homepage      = "https://github.com/alu4421/LPP_T_7B_P11"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
