# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "psychomatrix/version"

Gem::Specification.new do |s|
  s.name        = "psychomatrix"
  s.version     = Psychomatrix::VERSION
  s.authors     = ["Oleksandr Ulianytskyi"]
  s.email       = ["a.ulyanitsky@gmail.com"]
  s.homepage    = "https://github.com/asux/psychomatrix"
  s.summary     = %q{Gem to calculate psychomatrix (Pythagoras' square) from date}
  s.description = %q{Gem to calculate psychomatrix (Pythagoras' square) from date}

  #s.rubyforge_project = "psychomatrix"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rspec"
  s.add_runtime_dependency "yard"
  s.add_runtime_dependency "redcarpet"
end
