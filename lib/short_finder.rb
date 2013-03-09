class ShortFinder
  
  def self.find_words(w)
    w.permutation(2).map{|i|i.join.size==6 && w.include?(i.join)?i*' + '+' => '+i.join : nil}.compact
  end

end