# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "vagrant-guest-parrotos"
  gem.version       = File.read('VERSION').chop
  gem.authors       = ["Sophia Castellarin"]
  gem.email         = ["scastellarin95@gmail.com"]
  gem.description   = "Vagrant ParrotOS guest plugin"
  gem.summary       = "Vagrant guest plugin"
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/soapy/vagrant-ruby-guest-parrotos"

  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "rspec", "~> 3.5.0"

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive)/}) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
