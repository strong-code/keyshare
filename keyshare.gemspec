# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keyshare'

Gem::Specification.new do |spec|
  spec.name          = "keyshare"
  spec.version       = Keyshare::VERSION
  spec.authors       = ["clindsay107"]
  spec.email         = ["clindsay107@gmail.com"]

  spec.summary       = "Easily & securely share environment secrets with your dev team."
  spec.homepage      = "https://github.com/clindsay107/keyshare"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)#.reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "aws-sdk"
end
