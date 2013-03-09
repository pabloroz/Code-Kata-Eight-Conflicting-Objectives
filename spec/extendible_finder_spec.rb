require "rspec"
require "./lib/extendible_finder"

describe ExtendibleFinder do

  describe "Results Test" do
    it "should select only six letters words without spaces" do

      words = [
        "wake", "up", "wakeup",
        "sewwerg", "age", "sewwergage",
        "hiqwerty  ", "ring", "hiqwertyring",
        "for", "g", "forg",
        "ad", "ju", "adju"
      ]

      matches = described_class.find_words(words)

      matches.should == ["wake + up => wakeup"]
    end
  end
end