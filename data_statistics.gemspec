require_relative "lib/data_statistics/version"

Gem::Specification.new do |spec|
  spec.name        = "data_statistics"
  spec.version     = DataStatistics::VERSION
  spec.authors     = ["MC"]
  spec.email       = ["iceskylmc@gmail.com"]
  spec.homepage    = "https://github.com/iceskyl/data_statistics"
  spec.summary     = "Summary of DataStatistics."
  spec.description = "Description of DataStatistics."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4"
end
