def translate(str)
  vowels = 'aeiou'
  words = str.split(' ')

  translated_words = []
  words.each do |word|
    if vowels.include?(word[0])
      # Rule 1: If it starts with a vowel, add "ay" to the end
      translated_words.push("#{word}ay")
    else
      # Rule 2: If it starts with a consonant, find the consonant cluster and move it to the end
      consonants = word.slice!(/^([^#{vowels}q]*(qu)?)/)
      translated_words.push("#{word}#{consonants}ay")
    end
  end

  translated_words.join(' ')
end
