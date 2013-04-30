# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "button_form/version"

Gem::Specification.new do |s|
  s.name        = "button_form"
  s.version     = ButtonForm::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josep M. Bach", "Josep Jaume Rey", "Oriol Gual"]
  s.email       = ["info@codegram.com"]
  s.homepage    = "http://github.com/codegram/form_button"
  s.summary     = %q{button_form replaces all <input type="submit"/> tags with <button/> in your forms}
  s.description     = %q{button_form replaces all <input type="submit"/> tags with <button/> in your forms}

  s.rubyforge_project = "button_form"

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "actionpack", ">= 3.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
