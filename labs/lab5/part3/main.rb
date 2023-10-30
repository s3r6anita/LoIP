# frozen_string_literal: true

def correction(str)
  new_str = ''
  str.split('.').each do |sentence|
    words = sentence.split(' ')
    words.each_index do |index|
      if index % 2 == 0
        words[index] = words[index + 1]
      end
    end
    # words.map_with_index { |val, index| (index.even? ? words[index + 1] : val)}
    words_str = words.join(' ')
    new_str += words_str + '. '
  end
  new_str.chop
end
