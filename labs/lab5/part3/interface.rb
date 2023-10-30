# frozen_string_literal: true

require './main.rb'

loop do
  print 'Enter subsequence of strings:'
  str = gets.chop
  print correction(str)
  puts
end
