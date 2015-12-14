class String
  def alphabets_occurence
    count = Hash.new(0)
    downcase.gsub(/[^\s]/).each { |alphabet| count[alphabet] += 1 }
    sorted = count.sort_by { |word, count| count }
  end
end