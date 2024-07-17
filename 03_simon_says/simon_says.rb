def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, times = 2)
  Array.new(times, input).join(' ')
end

def start_of_word(input, num)
  input[0, num]
end

def first_word(input)
  input.split.first
end

def titleize(input)
  little_words = %w[and over the the]
  words = input.split.map.with_index do |word, index|
    if index.zero? || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end
  words.join(' ')
end
