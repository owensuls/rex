lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rex/version'

Gem::Specification.new do |spec|
  spec.name          = 'rex'
  spec.version       = Rex::VERSION
  spec.authors       = ["owen"]
  spec.email         = ["owen.suls@gmail.com"]
  spec.description   = 'Ruby experiments'
  spec.summary       = 'Ruby experiments'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "roux"
end
