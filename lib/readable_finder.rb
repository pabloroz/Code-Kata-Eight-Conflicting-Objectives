class ReadableFinder
  
  def self.find_words(words)
    matches = []
    
    words.each do |left_part|
      words.each do |right_part|
        candidate = left_part + right_part
        if candidate.length == 6
          if words.include? candidate
            matches << "#{left_part} + #{right_part} => #{candidate}"
          end
        end
      end
    end

    matches
  end

end