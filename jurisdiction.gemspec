# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jurisdiction/version'

Gem::Specification.new do |spec|
  spec.name          = "jurisdiction"
  spec.version       = Jurisdiction::VERSION
  spec.authors       = ["Ben Cullen-Kerney"]
  spec.email         = ["ben@beancuke.com"]
  spec.description   = %q{Thin DSL to collect driver methods and provide access}
  spec.summary       = %q{Thin DSL to collect driver methods and provide access}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard-minitest"

  spec.add_dependency "capybara", ">= 2"
end
