lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "qualityforward/version"

Gem::Specification.new do |spec|
  spec.name          = "qualityforward"
  spec.version       = Qualityforward::VERSION
  spec.authors       = ["Atsushi"]
  spec.email         = ["atsushi@moongift.jp"]

  spec.summary       = "Ruby SDK for Qualityforward API."
  spec.description   = "Ruby SDK for Qualityforward API. Create test suite, retribe project, test case."
  spec.homepage      = "https://cloud.veriserve.co.jp/"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/goofmint/qualityforward-rb.git"
  spec.metadata["changelog_uri"] = "https://github.com/goofmint/qualityforward-rb/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
