# freeze_string_literal: true

require_relative 'main'

print "Choose '1 - plank' or '2 - board' :\n"
obj = gets.to_i

if obj == 1
  puts 'Enter length and width:'
  len, wid = gets.split(' ')
  my_plank = Plank.new(len.to_i, wid.to_i)

  my_plank.print
  puts "Square: #{my_plank.square}"

else
  puts "Enter length, width and thickness"
  len, wid, th = gets.split(' ')
  my_board = Board.new(len.to_i, wid.to_i, th.to_i)

  my_board.print
  puts "Площадь через метод: #{my_board.square}"
  puts "Объем через метод: #{my_board.volume}"
end
