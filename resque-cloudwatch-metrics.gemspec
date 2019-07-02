# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resque/cloudwatch/metrics/version'

Gem::Specification.new do |spec|
  spec.name          = "resque-cloudwatch-metrics"
  spec.version       = Resque::CloudWatch::Metrics::VERSION
  spec.authors       = ["Masaki Takeuchi"]
  spec.email         = ["m.ishihara@gmail.com"]

  spec.summary       = %q{Send Resque.info to CloudWatch Metrics}
  spec.homepage      = 'https://github.com/m4i/resque-cloudwatch-metrics'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'aws-sdk-core', '~> 2'
  spec.add_dependency 'resque', '~> 2'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
