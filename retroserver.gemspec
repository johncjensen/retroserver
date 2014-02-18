# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retroserver/version'

Gem::Specification.new do |spec|
  spec.name          = "retroserver"
  spec.version       = Retroserver::VERSION
  spec.executables << "Retroserver"
  spec.authors       = ["John Jensen"]
  spec.email         = ["johncjensen@hotmail.com"]
  spec.summary       = %q{Lightweight Ruby Web Server}
  spec.description   = %q{Experimental -- Lightweight Ruby Web Server}
  spec.homepage      = "https://rubygems.org/gems/retroserver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
