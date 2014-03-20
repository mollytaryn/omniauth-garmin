# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-garmin/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-garmin"
  s.version     = OmniAuth::Garmin::VERSION
  s.authors     = ["Jeff Moss"]
  s.email       = ["jeff.moss@octanner.com"]
  s.homepage    = "http://github.com/octanner/omniauth-garmin"
  s.summary     = %q{OmniAuth strategy for Garmin}
  s.description = %q{OmniAuth strategy for Garmin}

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
end
