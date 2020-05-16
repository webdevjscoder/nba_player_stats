require_relative 'lib/nba_player_stats/version'

Gem::Specification.new do |spec|
  spec.name          = "nba_player_stats"
  spec.version       = NbaPlayerStats::VERSION
  spec.authors       = ["Juan Cobian"]
  spec.email         = ["webdevjscoder@gmail.com"]

  spec.summary       = "Retrieve information about NBA player's stats."
  spec.description   = "This gem will allow the user to retrieve information about a specific NBA player of their choosing."
  spec.homepage      = "https://github.com/webdevjscoder/nba_player_stats.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/webdevjscoder/nba_player_stats"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
