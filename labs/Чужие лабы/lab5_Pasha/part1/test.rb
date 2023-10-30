require 'minitest/autorun'
require './main.rb'

class TestTree < Minitest::Test

    
    # первый тест
    def test_1
        datas = [ # x res(y)
            [0, 0],
            [1, 1.7159],
            [-1, 1.7159],
            [2, 11.1924]
        ]
        datas.each do |data|
            res = calc(data[0])
            assert_in_delta(data[1], res, 0.0001, ["Incorrect value function 'calc' #{data[0]} -> #{data[1]} (вместо #{res})"])
        end
        
        
    end
end