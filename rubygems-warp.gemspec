# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rubygems-warp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ben Langfeld"]
  gem.email         = ["ben@langfeld.me"]
  gem.description   = %q{Speeds up rubygems custom require to load from the stdlib first, providing a large performance boost when the gem count is high.}
  gem.summary       = %q{Want 87% faster rubiez?}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "rubygems-warp"
  gem.require_paths = ["lib"]
  gem.version       = RubygemsWarp::VERSION
end
