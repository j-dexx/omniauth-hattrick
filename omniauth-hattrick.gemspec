# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-hattrick/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-hattrick"
  spec.version       = OmniAuth::Hattrick::VERSION
  spec.authors       = ["James Doyley"]
  spec.email         = ["jdoyley@gmail.com"]

  spec.summary       = %q{ An omniauth strategy for hattrick.}
  spec.description   = %q{ An omniauth strategy for CHPP products on hattrick.org.}
  spec.homepage      = "https://github.com/j-dexx/omniauth-hattrick"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'omniauth-oauth', '~> 1.1'
  spec.add_dependency 'nokogiri', '~> 1.6', '>= 1.6.7.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
