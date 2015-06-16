# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_world_project/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_world_project"
  spec.version       = HelloWorldProject::VERSION
  spec.authors       = ["elsapet"]
  spec.summary       = %q{Say hello to the world!}
  spec.description   = %q{A simple Hello World gem (based on rubygems.org introductory tutorial)}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  # testing
  spec.add_development_dependency "rspec", "~> 3.2", ">= 3.2.3"
  spec.add_development_dependency "pry", "~> 0.10.0"
end
