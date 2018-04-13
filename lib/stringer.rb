require "stringer/version"

module Stringer
  def self.spacify *strings
    string = ""
    strings.each do |s|
      string += " " + s
    end
    string.lstrip!
  end

  def self.minify(string, max_length)
    # slice string at given max_length to the length of the string
    string.slice!(max_length, string.length)
    # only add ... if string length is greater than or equal to 10
    string += "..." if string.length >= 10
    # return edited string
    string
  end

  def self.replacify(string, word, new_word)
    # tried using string.sub! but that only changes first instance of word
    # replace every instance of word with new_word
    string.gsub!(word, new_word)
  end

  def self.tokenize(string)
    # split each word in the string at each space
    string.split(" ")
  end

  def self.removify(string, word)
    # slice word and one space out of string
    string.slice!("#{word} ")
    # return edited string
    string
  end
end
