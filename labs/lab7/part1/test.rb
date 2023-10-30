# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Test Class
class TestTree < Minitest::Test
  # first test
  def test_1
    assert_equal(true, File.exist?('F.txt'), "File don't exist")
  end

  # second test
  def test_2
    data = ['Hello my name is John', 'Hello, how are you? Everything is okay or not',
            "If no block is given, \n a new Enumerator is returned that includes the index "]
    data.each do |d|
      generate_file(d)
      f = File.open('F.txt', 'r')
      assert_equal(d, f.read, 'Incorrect generate of file')
    end
  end

  # third test
  def test_3
    data = ['Hello my name is John', 'Hello, how are you? Everything is okay or not',
            "If no block is given, \n a new Enumerator is returned that includes the index "]
    ans = [1, 0, 2]
    3.times do |ind|
      generate_file(data[ind])
      assert_equal(ans[ind], calc_words5(false), 'Incorrect words number')
    end
  end
end
