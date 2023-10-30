# frozen_string_literal: true

KEY = 3**0.5 - Math::PI / 12 - 1

# rubocop:disable Metrics/MethodLength
def calc(num)
  y = ->(x) { Math.tan(x)**2 }
  a = x_cur = x_next = Math::PI / 4
  b = Math::PI / 3
  step = (b - a) / num
  res = 0
  (0...num).each do |_i|
    x_next += step
    y_cur = y.call x_cur
    y_next = y.call x_next
    res += (y_cur + y_next) / 2 * step
    x_cur += step
  end
  res
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength
