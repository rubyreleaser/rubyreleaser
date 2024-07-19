# frozen_string_literal: true

# rubocop:ignore Style/Documentation
module RubyReleaser
  # @private
  module VERSION
    MAJOR = 0
    MINOR = 1
    TINY = 0
    PRE = "alpha"

    STRING = [MAJOR, MINOR, TINY, PRE].compact.join(".")
  end

  # Returns the currently loaded version of RubyReleaser as a `Gem::Version`.
  def self.gem_version
    Gem::Version.new(VERSION::STRING)
  end

  # Returns the currently loaded version of RubyReleaser as a string.
  def self.version
    VERSION::STRING
  end
end
