# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysql_query_timeout/version'

Gem::Specification.new do |spec|
  spec.name          = "mysql_query_timeout"
  spec.version       = MysqlQueryTimeout::VERSION
  spec.authors       = ["Tim Galeckas"]
  spec.email         = ["tgaleckas@groupon.com"]

  spec.summary       = "Kill mysql queries on the DB side after a certain amount of seconds have passed"
  spec.homepage      = "https://github.com/timgaleckas/mysql_query_timeout"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
