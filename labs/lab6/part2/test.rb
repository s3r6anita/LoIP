# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Test Class
class TestTree < Minitest::Test
  # first test
  def test_1
    data = Array.new(10) { rand(10..100) }
    data.each do |d|
      assert_in_delta(KEY, calc(d), 0.001, ["Incorrect value function calc(#{d}) (instead of #{KEY})"])
    end
  end
end
