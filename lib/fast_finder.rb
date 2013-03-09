class FastFinder
  
  def self.find_words(words)
    grouped = words.group_by(&:length)
    grouped = grouped.each { |key, value| if key < 7 then grouped[key] = value.to_set end}
    matches = Set.new
    range = (1..4).select { |i|  grouped.has_key?(i+1) && grouped.has_key?(5-i) }
    grouped[6].each do |w|
      for i in range do
        l = w[0..i]
        r = w[i + 1, 6]
        if grouped[i+1].include?(l) && grouped[5-i].include?(r)
          matches << "#{l} + #{r} => #{w}"
        end
      end
    end

    matches.to_a
  end

end