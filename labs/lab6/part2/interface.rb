# frozen_string_literal: true

require './main'

loop do
  print 'Start? [y/n]'
  start = gets.chop
  if start == 'y'
    n = 20
    print "integral (n = #{n}) = #{calc(n).round(6)}   accuracy = #{(calc(n).to_f - KEY).round(6)}\n"
    n = 30
    print "integral (n = #{n}) = #{calc(n).round(6)}   accuracy = #{(calc(n).to_f - KEY).round(6)}\n"
    n = 40
    print "integral (n = #{n}) = #{calc(n).round(6)}   accuracy = #{(calc(n).to_f - KEY).round(6)}\n"
  else
    exit
  end
end
