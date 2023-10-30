# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Test Class
class TestTree < Minitest::Test
  # first test
  def test_1
    data = Array.new(10) { rand(10..100) }
    10.times do |i|
      assert_in_delta(KEY, calc(data[i]), 0.001,
                      ["Incorrect value function calc(#{data[i]}) ((instead of #{calc(data[i])})"])
    end
  end
end
