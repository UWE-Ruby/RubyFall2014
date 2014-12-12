# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'masterdlymind/version'

Gem::Specification.new do |spec|
  spec.name          = "masterdlymind"
  spec.version       = Masterdlymind::VERSION
  spec.authors       = ["Emily Ruf"]
  spec.email         = ["emxruf@gmail.com"]
  spec.summary       = %q{Play a simple game of Mastermind}
  spec.description   = %q{Match your wits against the computer in this Ruby implementation of the pattern-guessing game MasterMind}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
