$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "martinet_rails/identity"

Gem::Specification.new do |spec|
  spec.name = MartinetRails::Identity.name
  spec.version = MartinetRails::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Tang Rufus"]
  spec.email = ["tangrufus@gmail.com"]
  spec.homepage = "https://github.com//martinet_rails"
  spec.summary = "TODO: Add gem summary here."
  spec.description = "TODO: Add gem description here."
  spec.license = "MIT"


  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "gemsmith", "~> 7.6"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files = Dir["lib/**/*", "vendor/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end
