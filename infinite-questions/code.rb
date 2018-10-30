require "pry"
answer = ""
# if they typed anything other than "no", the loop should run again! 
while answer != "no" do
  #  Ask customer if you can get them anything
  puts "Can I get you anything?"
  answer = gets.chomp
  binding.pry
end
# After the loop ends, say goodbye.
puts "Okay, bye!"
