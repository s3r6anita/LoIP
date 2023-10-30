# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

# Class Test
class Test < Minitest::Test
  def setup
    @window = Window.new(10, 5)
    @blind1 = Blind.new(15, 2, 'false')
  end

  def test_1
    assert_equal(true, @window.is_a?(Window))
    assert_equal(true, @blind1.is_a?(Blind))
  end

  def test_2
    assert_equal(false, @window.is_a?(Blind))
    assert_equal(true, @blind1.is_a?(Window))
  end

  def test_3
    assert_equal(false, @blind1.instance_of?(Window))
  end

  def test_4
    res = [Blind, Window, Object, Minitest::Expectations, Kernel, BasicObject]
    assert_equal(res, @blind1.class.ancestors)
  end
end
