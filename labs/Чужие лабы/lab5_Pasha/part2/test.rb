require 'minitest/autorun'
require './main.rb'

class TestTree < Minitest::Test

    # def setup end
    
    # первый тест
    def test_1
        datas = [ # x zifr bukv
            [0, 1, 0],
            [10, 0, 1],
            [15, 0, 1],
            [16, 2, 0],
            [123, 1, 1],
        ]
        datas.each do |data|
            res_z, res_b = calc(data[0])
            assert_equal(res_z, data[1], ['Incorrect value function "calc"'])
            assert_equal(res_b, data[2], ['Incorrect value function "calc"'])
        end
        
        
    end
end