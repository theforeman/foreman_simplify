# -*- encoding: utf-8 -*-
require File.expand_path('../lib/foreman_openstack_simplify/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jiri Stransky"]
  gem.email         = ["jistr@redhat.com"]
  gem.description   = %q{Plugin for Foreman that simplifies the UI for purposes of OpenStack install}
  gem.summary       = %q{Plugin for Foreman that simplifies the UI for purposes of OpenStack install}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "foreman_openstack_simplify"
  gem.require_paths = ["lib"]
  gem.version       = ForemanOpenstackSimplify::VERSION

  gem.add_runtime_dependency "deface"
end
