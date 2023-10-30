require 'minitest/autorun'
require './main.rb'

class TestTree < Minitest::Test

    # def setup end
    
    # первый тест
    def test_1
        datas = [ # x zifr bukv
            ['Петров Иван Петрович', 'Иван Петрович Петров', 'Петров И.П'],
            ['Смирнов Павел Андреевич', 'Павел Андреевич Смирнов', 'Смирнов П.А'],
        ]
        datas.each do |data|
            t1, t2 = process_name(data[0])
            assert_equal(t1, data[1], ['Incorrect value function "process_name"'])
            assert_equal(t2, data[2], ['Incorrect value function "process_name"'])
        end
    end

    def genStr
        rand(65..90).chr * rand(5..10)
    end

    def test_auto
        10.times do
            name = genStr
            surename = genStr
            otchestvo = genStr

            t1, t2 = process_name("#{surename} #{name} #{otchestvo}")
            assert_equal(t1, "#{name} #{otchestvo} #{surename}", ['Incorrect value function "process_name"'])
            assert_equal(t2, "#{surename} #{name[0]}.#{otchestvo[0]}", ['Incorrect value function "process_name"'])

        end
    end
end