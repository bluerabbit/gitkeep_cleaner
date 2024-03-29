lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gitkeep_cleaner/version"

Gem::Specification.new do |spec|
  spec.name    = "gitkeep_cleaner"
  spec.version = GitkeepCleaner::VERSION
  spec.authors = ["Akira Kusumoto"]
  spec.email   = ["akirakusumo10@gmail.com"]

  spec.summary     = "Remove unused gitkeep files"
  spec.description = "Remove unused gitkeep files"
  spec.homepage    = "https://github.com/bluerabbit/gitkeep_cleaner"
  spec.license     = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "bundler", "~> 2.2.33"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
