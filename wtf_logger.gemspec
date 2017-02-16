# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wtf_logger/version"

Gem::Specification.new do |s|
  s.name        = 'wtf_logger'
  s.version     = WtfLogger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.date        = '2017-01-16'
  s.summary     = "When 💩 hits the fan."
  s.description = ""
  s.authors     = [""]
  s.email       = ''
  s.homepage    = "https://github.com/barnabyalter/wtf-logger"

  s.files       = Dir["{app,lib,config}/**/*"] + ["Rakefile", "Gemfile", "README.md"]

  s.add_dependency "colorize", "~> 0.8.1"
end
