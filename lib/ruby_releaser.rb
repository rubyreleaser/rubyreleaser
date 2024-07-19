# frozen_string_literal: true

require "active_support"
require "thor"
require "zeitwerk"

Zeitwerk::Loader.for_gem.tap do |loader|
  loader.ignore(
    "#{__dir__}/ruby_releaser/version.rb",
    "#{__dir__}/rubyreleaser.rb"
  )
  loader.do_not_eager_load("#{__dir__}/ruby_releaser/cli.rb")
  loader.inflector.inflect "api" => "API", "cli" => "CLI", "ui" => "UI"
end.setup

# The main module for RubyReleaser.
module RubyReleaser
  require_relative "ruby_releaser/version"
end
