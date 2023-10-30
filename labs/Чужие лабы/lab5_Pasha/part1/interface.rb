require './main.rb'

while true
    print "Enter X: "; x = gets.to_f
    print "Y = #{calc(x).round(4)}"
    puts

end