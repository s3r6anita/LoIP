# frozen_string_literal: true

require 'minitest/autorun'
require './main.rb'

# Test Class
class TestTree < Minitest::Test
  # first test
  def test_1
    data = [ # [str, str.reverse]
      ['teLOLnet', true], # tenet
      ['1r oRRR =tator1', true], # 1rotator1
      ['k aDya k', true], # kayak
      ['wo   w', true], # wow
      ['1>:D23W21', true], # 12321
      ['troll', false]
    ]
    data.each do |d|
      res = palindrom?(d[0])
      assert_equal(res, d[1], ['Correct work of function "isPalindrom?"'])
    end
  end
end
