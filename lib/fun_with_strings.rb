module FunWithStrings
  def palindrome?
    # remove non-character words
    current_str = self.gsub(/(\W|\d|\-)/, "")
    current_str.casecmp(current_str.reverse) == 0
  end
  def count_words
    # your code here
    current_str = self.gsub(/(\d|\-|\,|\!|\t|\n)/, "")
    values = current_str.split
    result = {}  
    values.each{|value| result[value.downcase]=(result[value.downcase].to_i+1)}
    return result
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
