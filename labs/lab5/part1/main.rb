# frozen_string_literal: true

def calc(number)
  Math.sin(number) / (number**3 - 5) + number**2 - 2 * Math.exp(number)
end
