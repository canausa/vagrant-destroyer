# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-destroyer/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-destroyer"
  spec.version       = VagrantPlugins::Destroyer::VERSION
  spec.authors       = ["Terrance"]
  spec.email         = ["tscanausa@gmail.com"]
  spec.description   = %q{If enable calls vagrant destroy following a vagrant up}
  spec.summary       = %q{This plugin is useful for testing code: create a box, provision it, run tests, destroy. Guarantees a consistant enviroment by making sure it is destroyed automatically.}
  spec.homepage      = "https://github.com/canausa/vagrant-destroyer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
