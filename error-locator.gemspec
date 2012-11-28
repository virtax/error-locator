$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "error-locator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "error-locator"
  s.version     = ErrorLocator::VERSION
  s.authors     = ["Partsyrniy Dmitriy"]
  s.email       = ["liks@mail.require"]
  s.homepage    = "https://github.com/virtax/error-locator"
  s.summary     = "Locate error in editor from error stack"
  s.description = "Set $EDITOR environment variable to your desired editor, add 'error-locator' gem to your gem file and add ' post '/error-locator' => ErrorLocator' to your routes.rb. Click on a stack trace line in the browser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.0.0"
end
