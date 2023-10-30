def fact( number )  
	if number == 0
		1
	else
		number * fact( number - 1 ) 
	end	
end

KEY = 1.00 / (3 * fact(3))
EPS = [0.01, 0.001]
Y = ->(k) { 1.00 / (k * (k + 1) * (k + 2) * (k + 3)) }

def calc
  # это бесконечный массив (а точнее перечисляемый тип т.е. Enumerator), но берем лишь столько, сколько нужно для нужной точности
  values = Enumerator.new do |val|
    number = 1
    loop do 
	   val << Y.call( number )
	   number += 1
	end
  end   

  iter1, iter2 = 0, 0 #число итераций для 1-й и 2-й точности

  (1..1.0/0).each do |iter|
  	if values.take(iter).sum - values.take(iter-1).sum < EPS[0]
  		# p iter число итераций 
  		# p values.take(iter).sum  посчитанное значение с таким числом итераций
  		iter1 = iter
  		break
  	end	
  end

  (1..1.0/0).each do |iter|
  	if values.take(iter).sum - values.take(iter-1).sum < EPS[1]
  		iter2 = iter
  		# p iter
  		# p values.take(iter).sum
  		break
  	end	
  end

  iter2 - iter1 #вернет разницу в количестве итераций
end

#p KEY правильное значение ряда
p calc 
