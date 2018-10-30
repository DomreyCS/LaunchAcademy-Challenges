def disclaimer
  puts "***DISCLAIMER***"
  puts "This code may not work the way you expect it to."
  puts "By using this temperamental program, you agree not to"
  puts "sue the pants off its creator."
  puts "***"
end

response = 'n'
while response.downcase != 'y'
  disclaimer
  puts "\nYou must accept our disclaimer to proceed! Do you accept? (y/n)"
  response = gets.chomp
end

puts "3 + 2 = #{rand(6)}"
