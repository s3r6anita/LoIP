# frozen_string_literal: true

def generate_word
  (1..(rand(10))).map { rand(97..122).chr }.join
end

def generate_str
  str = ''
  rand(1..10).times do
    str += "#{generate_word} "
  end
  str += "\n"
end

def generate_text
  text = ''
  rand(1..10).times do
    text += generate_str
  end
  text
end

def generate_file(text)
  f = File.open('F.txt', 'w')
  f.write(text)
  f.close
end

def calc_words5(file_creation)
  if file_creation
    some_text = generate_text
    generate_file(some_text)
  end
  f = File.open('F.txt', 'r')
  arr = []
  f.each { |str| arr << str.split } # ; p str.chop
  f.close
  arr.flatten!
  arr.each.inject(0) { |acc, word| word.length == 5 ? acc + 1 : acc }
end
