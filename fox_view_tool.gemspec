# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fox_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "fox_view_tool"
  spec.version       = FoxViewTool::VERSION
  spec.authors       = ["Cottonwood Devcamp, Fox Gardner"]
  spec.email         = ["fox@gardnermedia.com"]

  spec.summary       = %q{Various view spesific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://fox-rework-foxstudent.c9users.io/about-me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
