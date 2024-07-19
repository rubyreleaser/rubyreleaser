# frozen_string_literal: true

require "test_helper"

class TestVersion < Minitest::Test
  def test_version_returns_a_string
    assert_kind_of String, RubyReleaser.version
  end

  def test_gem_version_returns_a_correct_gem_version_object
    assert_kind_of Gem::Version, RubyReleaser.gem_version
    assert_equal RubyReleaser.version, RubyReleaser.gem_version.to_s
  end
end
