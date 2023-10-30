# frozen_string_literal: true

require './main.rb'

loop do
  print 'Enter X: '
  x = gets.to_f
  print "Y = #{calc(x).round(4)}"
  puts
end
