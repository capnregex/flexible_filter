require_relative "lib/flexible_filter/version"

Gem::Specification.new do |spec|
  spec.name        = "flexible_filter"
  spec.version     = FlexibleFilter::VERSION
  spec.authors     = ["Robert Ferney"]
  spec.email       = ["rob@ferney.org"]
  spec.homepage    = "https://github.com/capnregex/flexible_filter"
  spec.summary     = "Provides An interface for more flexible user specified filtering"
  # spec.description = "Description of FlexibleFilter."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases/tag/v#{spec.version}"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
