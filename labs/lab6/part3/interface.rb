# frozen_string_literal: true

require './main'

# rubocop:disable Metrics/BlockLength
loop do
  print "\nStart? [y/n]"
  start = gets.chop
  if start == 'y'

    puts "Choose function: \n1. sin(x)/x \n2. tan(x+1)/(x+1) \n"
    func_num = gets.chop
    puts "Choose creation method: \n1. lambda\n2. yield\n"
    method_num = gets.chop

    case func_num
    when '1' then func = 'sin(x)/x'
                  case method_num
                  when '1' then block = ->(x) { Math.sin(x) / x }
                  when '2' then block = proc { |x| Math.sin(x) / x }
                  # some_func = func_sin
                  else abort 'Error'
                  end
    when '2' then func = 'tan(x+1)/(x+1)'
                  case method_num
                  when '1' then block = ->(x) { Math.tan(x + 1) / (x + 1) }
                  when '2' then block = proc { |x| Math.tan(x + 1) / (x + 1) }
                  # some_func = func_tan
                  else abort 'Error'
                  end
    else abort 'Error'
    end

    puts "*lil - low integration limit, uil - upper integration limit, n - number of steps\n"
    puts 'Input lil'
    lil = gets.chop.to_f
    puts 'Input uil'
    uil = gets.chop.to_f
    puts 'Input n'
    n = gets.chop.to_i

    puts "Standart form of output: #{"\u222b".encode('utf-8')}(lil, uil, func)"
    print "#{"\u222b".encode('utf-8')}(#{lil}, #{uil}, #{func}) = #{intg(lil, uil, n, &block)}\n"
  else
    exit
  end
end
# rubocop:enable Metrics/BlockLength
