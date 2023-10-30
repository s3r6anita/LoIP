=begin block 0
const a = [56, 78] #делает а неизменным объектом
b = [1, 2].freeze  #делает неизменными значения массива, т.е. можно написать b='false'	
=end

=begin block 1
arr = ['ddd', 'aaaaaaaa', 'cccccc', 'pppp']
p arr. max_by { |y| y.length }
p arr.sort_by { |y| y.length } # отсортирует по длине
p arr. sort_by { |y| y.length }.reverse.join #отсортирует, развернет и объеденит в одну строку
=end


=begin block 2
arr = [1, 2, 3]
arr.each { |x| x}
arr.map { |x| x**x} 
# хз, что и как, ничего не вывело
=end


=begin block 3
def foo(x,y)
	p "x = #{x}"
	yield(y)
end

foo(5,7) do |n|
	x=5
	p "n = #{n}"
end
=end


=begin 'block 4'
class Person
	attr_accessor :name #хз, что это
	attr_reader :name #алтернатива закоменченному (возвращает .name)
	attr_writer :name #перезаписать имя

	def initialize(age, name)
		@age, @name = age, name			
	end
	# def name
	# 	@name			
	# end
end

person = Person.new(30, "John")
p person.name #вывод имени
p person.name=("Anna") #передача нового имени
p person.name #вывод имени

=end


=begin'block 5'	
class Name
	def name
		"John"
	end
end

module MiddleName #подходит для множественного наследования
	def middle_name
		"Mark"
	end	
end

class FullName < Name #наследование может быть только от одного класса
	include MiddleName #передается при наследовании
	def name 
#		super #выводит логику класса родителя 
		"#{super} Smith" #интерполяция - выполнит name 
	end
end	

p FullName.new.middle_name
=end

=begin 'block 6'

class Person
	def self.name #self ищет все экземпляры класса (можно не создавать экземпляр класса и сразу вызывать (статический метод из c++))
		
	end
	@@age = 18 #существует отдельно и назависимо от объектов (вызывается от класса)
	def set_val
		@@age = val
	end	
	def get_val(val)
		p @@age
	end	
end

p Person.det_val
=end


=begin 'block last'
def foo
	10 / 0
	rescue #ловит исключения
		p "Caught exception"	
	rescue ZeroDivizionError => e
	rescue ArgumentError

	ensure #выполнится в любом случае - и с ошибкой и без (как finally)
		p ""	
end


def foo(x)
	raise StardartError("Custom message") if x.zero?
end	
def call
	foo(0)
rescue StardartError =>
	p e.message
end

class CustomError < StardartError; end #свой класс ошибок
=end

=begin myblock
puts p
puts arr
gets.chop #ожидание ввода для запуска через папку
=end
