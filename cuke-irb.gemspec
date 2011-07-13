# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cuke-irb/version"

Gem::Specification.new do |s|
  s.name        = "cuke-irb"
  s.version     = CukeIrb::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andreas Heim"]
  s.email       = ["andreas@heim.no"]
  s.homepage    = "http://github.com/heim/cuke-irb"
  s.summary     = %q{Cucumber plugin that enables user to stop the execution of a feature and inspect the environment using irb}
  s.description = %q{Cucumber plugin that enables user to stop the execution of a feature and inspect the environment using irb}

  s.add_dependency "cucumber"

  s.post_install_message = <<-EOS

  *****************************************************************
  * To use the cuke-irb tag your scenarios with @wip and @stop    *
  *****************************************************************
  EOS

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
