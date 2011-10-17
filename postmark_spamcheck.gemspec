# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "postmark_spamcheck/version"

Gem::Specification.new do |s|
  s.name        = "postmark_spamcheck"
  s.version     = PostmarkSpamcheck::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Krasimir Angelov"]
  s.email       = ["krasio@codingspree.net"]
  s.homepage    = ""
  s.summary     = %q{Postmarks SpamCheck client}
  s.description = %q{http://spamcheck.postmarkapp.com}

  s.rubyforge_project = "postmark_spamcheck"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "restfulie"
end
