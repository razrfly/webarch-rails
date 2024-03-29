# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webarch/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "webarch-rails"
  spec.version       = Webarch::Rails::VERSION
  spec.authors       = ["Szymon Madeja"]
  spec.email         = ["smadeja1@gmail.com"]
  spec.summary       = %q{WebArch for Rails}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "twitter-bootstrap-rails"
end
