# frozen_string_literal: true

require './main.rb'

loop do
  print 'Enter string: '
  str = gets
  tmp = palindrom?(str)
  # p isPalindrom?(str)
  print "Symbols and numbers is palindrom - #{tmp}"
  puts
end
