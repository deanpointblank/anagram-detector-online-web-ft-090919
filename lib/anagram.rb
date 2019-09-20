# Your code goes here!
require "pry"
class Anagram
  attr_accessor :word, :matches
  
  def initialize(word)
    @word = word
    @matches = []
    @anagrams = nil
  end
  
  def match(word_list)
    word_list.each do |possible_anagram|
      letter_array = possible_anagram.split("")
      if letter_array.sort == @word.split("").sort
        @matches << possible_anagram
      end
    end
    @matches
  end
end