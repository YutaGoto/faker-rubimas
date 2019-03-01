lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/rubimas/version'

Gem::Specification.new do |spec|
  spec.name          = 'faker-rubimas'
  spec.version       = Faker::Rubimas::VERSION
  spec.authors       = ['YutaGoto']
  spec.email         = ['you.goto.510@gmail.com']

  spec.summary       = 'Test data generator using idolmaster.'
  spec.description   = 'Test data generator using idolmaster.'
  spec.homepage      = 'https://github.com/YutaGoto/faker-rubimas'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rubimas', '>= 1.0.0'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.65.0'
end
