class ExtendibleFinder
  
  def self.find_words(words, length_to_match = 6, formater = DefaultFormater, &block)
    matches = []
    words_of_max_length = words.select { |word| word.length == length_to_match }

    word_parts = words.select { |word| word.length < length_to_match }
    
    word_parts.each do |left_part|
      words_of_max_length.each do |word_of_max_length|
        if word_of_max_length.start_with? left_part
          right_part = word_of_max_length[left_part.length..-1]
          if word_parts.include? right_part
            match = formater.format(left_part, right_part)
            yield match if block_given?
            matches << match
          end
        end
      end
    end
    
    matches
  end

end

class DefaultFormater
    
  def self.format(left_part, right_part)
    "#{left_part} + #{right_part} => #{left_part + right_part}"
  end

end