# frozen_string_literal: true

require 'test_helper'

module Martinet
  class RailsTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::Martinet::Rails::VERSION
    end
  end
end
