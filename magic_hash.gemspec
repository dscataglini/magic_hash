# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magic_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "magic_hash"
  spec.version       = MagicHash::VERSION
  spec.authors       = ["Diego Scataglini"]
  spec.email         = ["dwebsubmit@gmail.com"]
  spec.summary       = %q{ An implementation of magic hash where a missing key returns a hash }
  spec.description   = %q{
    h = MagicHash.new
    h[:foo][:bar] = :baz
    #=> :baz
    h 
    #=> {:foo=>{:bar=>:baz}} 
}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
