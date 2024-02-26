strings_number = gets.chomp.to_i
strings = []
strings_number.times do
  strings << gets.chomp
end

az = ('a'..'z').to_a

strings.each do |string|
  new_string = []
  string.split('').reverse_each do |s|
    s = az[az.index(s)+3] if s.match?(/[a-zA-Z]/)
    new_string << s
  end
  puts new_string
end
