# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_world_project/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_world_project"
  spec.version       = HelloWorldProject::VERSION
  spec.authors       = ["elsapet"]
  spec.email         = ["ebraae@gmail.com"]
  spec.summary       = %q{Say hello to the world!}
  spec.description   = %q{A simple Hello World gem (based on rubygems.org introductory tutorial)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
