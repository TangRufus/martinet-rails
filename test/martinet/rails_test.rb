require 'test_helper'

class Martinet::RailsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Martinet::Rails::VERSION
  end
end
