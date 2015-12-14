class String
  def palindrome?
    word = self.downcase.scan(/\w/)
    word == word.reverse ? "#{self} IS a Palindrome" : "#{self} is NOT a Palindrome"
  end
end