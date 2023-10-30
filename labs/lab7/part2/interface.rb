# frozen_string_literal: true

require_relative 'main'

print "Choose 'window' or 'blind' >>> "
obj = gets.chomp

if obj.downcase == 'window'
  print 'Enter length and width >>> '
  len, wid = gets.split(' ')
  my_window = Window.new(len.to_i, wid.to_i)

  puts "\nSquare: #{my_window.square}"

else
  print 'Enter length, width and blindness >>> '
  len, wid, bld = gets.split(' ')
  my_blind = Blind.new(len.to_i, wid.to_i, bld)

  puts "\nSquare: #{my_blind.square}"
  puts "Is Blind: #{my_blind.blind?}"
end
