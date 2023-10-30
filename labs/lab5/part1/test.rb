# frozen_string_literal: true

require 'minitest/autorun'
require './main.rb'

# Test Class
class TestTree < Minitest::Test
  # first test
  def test_1
    data = [ # [x, res(y)]
      [0, -2],
      [1, -4.6469],
      [2, -10.475],
      [-1, 0.4045]
    ]
    # data = Array.new(5) {rand(-10..10)}

    data.each do |d|
      res = calc(d[0])
      assert_in_delta(d[1], res, 0.0001, ["Incorrect value function calc(#{d[0]}) -> #{d[1]} (вместо #{res})"])
    end
  end
end
