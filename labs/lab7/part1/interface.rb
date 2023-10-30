# frozen_string_literal: true

require './main'

loop do
  print 'Start? [y/n]'
  start = gets.chop
  if start == 'y'
    print "words with 5 letters in file = #{calc_words5(true)}\n"
  else
    exit
  end
end
