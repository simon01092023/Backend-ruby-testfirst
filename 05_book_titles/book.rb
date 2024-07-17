class Book
  attr_accessor :title

  def title=(new_title)
    @title = capitalize_title(new_title)
  end

  private

  def capitalize_title(title)
    little_words = %w[and the a an in of]
    words = title.split(' ')
    capitalized_title = []

    words.each_with_index do |word, index|
      capitalized_title << if index.zero? || !little_words.include?(word.downcase)
                             word.capitalize
                           else
                             word
                           end
    end

    capitalized_title.join(' ')
  end
end
