# frozen_string_literal: true
print 'Enter str: '
str = gets.split.map{|i| i.to_i}
res_str = []
res_str << str[0]
str.each_with_index do |s, i|
  if (i != 0) && (i != str.size - 1)
    if s != (str[i-1] + str[i+1])
      res_str << s
    end  
  end 
end  
res_str << str[str.size - 1]
print "res_str = #{res_str.join(' ')}"
