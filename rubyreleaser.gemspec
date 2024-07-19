# frozen_string_literal: true

require_relative "lib/ruby_releaser/version"

version = RubyReleaser::VERSION::STRING

Gem::Specification.new do |spec|
  spec.name = "rubyreleaser"
  spec.version = version
  spec.author = "Tony Burns"
  spec.email = "tony@tonyburns.net"

  spec.summary = "Release RubyGems with ease"
  spec.description = ""
  spec.homepage = "https://rubyreleaser.com"
  spec.license = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/rubyreleaser/rubyreleaser/issues",
    "changelog_uri" => "https://github.com/rubyreleaser/rubyreleaser/blob/v#{version}/CHANGELOG.md",
    "documentation_uri" => "https://docs.rubyreleaser.com/v#{version}/",
    "mailing_list_uri" => "https://github.com/rubyreleaser/rubyreleaser/discussions",
    "source_code_uri" => "https://github.com/rubyreleaser/rubyreleaser/tree/v#{version}",
    "rubygems_mfa_required" => "true"
  }

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 3.1.0"

  spec.files = Dir["exe/*", "lib/**/*.rb", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.bindir = "exe"
  spec.executables = %w[rubyreleaser]

  spec.add_dependency "activesupport", ">= 7.1.0"
  spec.add_dependency "bundler", "~> 2.3"
  spec.add_dependency "thor", "~> 1.3"
  spec.add_dependency "zeitwerk", "~> 2.6"
end
