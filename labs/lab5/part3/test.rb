# frozen_string_literal: true

require 'minitest/autorun'
require './main.rb'

# Test Class
class TestTree < Minitest::Test
  # first test

  def test_1
    data = [
      ['1 2 3 4. 1 2 3 4 5 6.', '2 2 4 4. 2 2 4 4 6 6.'],
      ['1 2 3 4 7 8. 1 2 3 4 5 6. 1 2. 1 2.', '2 2 4 4 8 8. 2 2 4 4 6 6. 2 2. 2 2.'],
      ['It is my mistake. Sorry i need to go out.', 'is is mistake mistake. i i to to out out.'],
      ['ab ba. cd dc. ef fe. gh hg ij ji kl lk mn nm.', 'ba ba. dc dc. fe fe. hg hg ji ji lk lk nm nm.'],
      ['BA AB. DC CD. FE EF. HG GH JI IJ LK KL NM MN', 'AB AB. CD CD. EF EF. GH GH IJ IJ KL KL MN MN.']
    ]
    data.each do |elem|
      temp_str = correction(elem[0])
      assert_equal(temp_str, elem[1], 'Incorrect work of function "correction()"')
    end
  end

  # def generateStr
  #     rand(65..90).chr * rand(5..10)
  # end
  # def test_auto
  #     10.times do
  #         temp_str = generateStr()
  #         cor_temp_str = correction(temp_str)
  #         assert_equal(t1, "#{name} #{otchestvo} #{surename}", ['Incorrect value function "correction"'])
  #     end
  # end
end
