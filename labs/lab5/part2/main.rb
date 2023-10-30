# frozen_string_literal: true

def palindrom?(str)
  str = str.scan(/\d|[a-z]/).join
  # p str
  str == str.reverse && !str.empty?
end
