# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Test Class
class TestTree < Minitest::Test
  # first test

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def test1
    data = [
      [0.1, 1, 100, ->(x) { Math.sin(x) / x }, 0.846139],
      [0.1, 1, 100, proc { |x| Math.sin(x) / x }, 0.846139],
      [1.0, 2.0, 100, ->(x) { Math.tan(x + 1) / (x + 1) }, -0.376871],
      [1.0, 2.0, 100, proc { |x| Math.tan(x + 1) / (x + 1) }, -0.376871],

      [0.1, 1, 500, ->(x) { Math.sin(x) / x }, 0.846139],
      [0.1, 1, 500, proc { |x| Math.sin(x) / x }, 0.846139],
      [1.0, 2.0, 500, ->(x) { Math.tan(x + 1) / (x + 1) }, -0.376871],
      [1.0, 2.0, 500, proc { |x| Math.tan(x + 1) / (x + 1) }, -0.376871],

      [0.1, 1, 1000, ->(x) { Math.sin(x) / x }, 0.846139],
      [0.1, 1, 1000, proc { |x| Math.sin(x) / x }, 0.846139],
      [1.0, 2.0, 1000, ->(x) { Math.tan(x + 1) / (x + 1) }, -0.376871],
      [1.0, 2.0, 1000, proc { |x| Math.tan(x + 1) / (x + 1) }, -0.376871],

      # some another tests
      [0, Math::PI / 2, 100, ->(x) { Math.sin(x) }, 1],
      [0, Math::PI / 2, 100, proc { |x| Math.sin(x) }, 1],
      [0, Math::PI / 2, 100, ->(x) { Math.sin(x) * Math.cos(x) }, 0.5],
      [0, Math::PI / 2, 100, proc { |x| Math.sin(x) * Math.cos(x) }, 0.5],
      [0, Math::PI / 2, 500, ->(x) { Math.sin(x) * Math.cos(x) }, 0.5],
      [0, Math::PI / 2, 500, proc { |x| Math.sin(x) * Math.cos(x) }, 0.5],
      [0, 2.0, 1000, ->(x) { x**10 + 5 * x**4 }, 218.18],
      [0, 2.0, 1000, proc { |x| x**10 + 5 * x**4 }, 218.18],
      [0, 2.0, 400, ->(x) { x**10 + 5 * x**4 }, 218.18],
      [0, 2.0, 535, proc { |x| x**10 + 5 * x**4 }, 218.18]
    ]
    data.each do |d|
      temp_str = intg(d[0], d[1], d[2], &d[3])
      assert_in_delta(d[4], temp_str, 0.01,
                      ["Incorrect work of function intg() = #{intg(d[0], d[1], d[2], &d[3])} (instead of #{d[4]})"])
    end
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
end
