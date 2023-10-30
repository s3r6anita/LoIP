# frozen_string_literal: true

KEY = 3**0.5 - Math::PI / 12 - 1
A = Math::PI / 4
B = Math::PI / 3
Y = ->(x) { Math.tan(x)**2 }

# with Enumerable
def calc(num)
  a = A
  b = B
  my_step = (b - a) / num
  a += my_step / 2
  (a...b).step(my_step).each.inject(0) { |acc, x| acc + Y.call(x) * my_step }
end

# with Enumerator
# rubocop:disable Metrics/MethodLength
def calc1(num)
  values = Enumerator.new do |val|
    a = A
    b = B
    step = (b - a) / num
    a += step / 2
    num.times do
      val << Y.call(a) * step
      a += step
    end
  end
  values.sum
end
# rubocop:enable Metrics/MethodLength
