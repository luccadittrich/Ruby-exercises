def reverse(word)
  array = word.split('').to_a

  array.reverse_each do |a|
    print a
  end
end


reverse(gets.chomp)
