def average(grades)
  grades.reduce(:+).to_f / grades.length
end

def letter_grade(average)
  grade = ""
  if average >= 90
    grade = "A"
  elsif average >= 80 && average < 90
    grade = "B"
  elsif average >= 70 && average < 80
    grade = "C"
  elsif average >= 60 && average < 70
    grade = "D"
  else
    grade = "F"
  end
end

def rankings(students)
  puts "Student rankings\n-----------------"
  students.each_with_index {|name, index| puts "#{index + 1}. #{name}"}
end

## Part 1
# Jane
jane = {}
jane[:name] = "Jane"
jane[:grades] = [98,95,88,97,74]
jane[:average] = average(jane[:grades])
jane[:letter_grade] = letter_grade(jane[:average])

# Samantha
samantha = {}
samantha[:name] = "Samantha"
samantha[:grades] = [85,93,98,88,49]
samantha[:average] = average(samantha[:grades])
samantha[:letter_grade] = letter_grade(samantha[:average])

# Matt
matt = {}
matt[:name] = "Matt"
matt[:grades] = [87,93,89,97,65]
matt[:average] = average(matt[:grades])
matt[:letter_grade] = letter_grade(matt[:average])

[jane, samantha, matt].each do |student|
  puts "#{student[:name]}: #{student[:letter_grade]}"
end

## Part 3
rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
