constituency = [
  {
    name: {first: "Jon", last: "Smith"},
    age: 25,
    income: 50000,
    household_size: 1,
    gender: "Male",
    education: "College"
  },
  {
    name: {first: "Jane", last: "Davies"},
    age: 30,
    income: 60000,
    household_size: 3,
    gender: "Female",
    education: "High School"
  },
  {
    name: {first: "Sam", last: "Farelly"},
    age: 32,
    income: 80000,
    household_size: 2,
    gender: "Unspecified",
    education: "College"
  },
  {
    name: {first: "Joan", last: "Favreau"},
    age: 35,
    income: 65000,
    household_size: 4,
    gender: "Female",
    education: "College"
  },
  {
    name: {first: "Same", last: "McNulty"},
    age: 38,
    income: 63000,
    household_size: 3,
    gender: "Male",
    education: "College"
  },
  {
    name: {first: "Mark", last: "Minahan"},
    age: 48,
    income: 78000,
    household_size: 5,
    gender: "Male",
    education: "High School"
  },
  {
    name: {first: "Susan", last: "Umani"},
    age: 45,
    income: 75000,
    household_size: 2,
    gender: "Female",
    education: "College"
  },
  {
    name: {first: "Bill", last: "Perault"},
    age: 24,
    income: 45000,
    household_size: 1,
    gender: "Male",
    education: "Did Not Complete High School"
  },
  {
    name: {first: "Doug", last: "Stamper"},
    age: 45,
    income: 75000,
    household_size: 1,
    gender: "Male",
    education: "College"
  },
  {
    name: {first: "Francis", last: "Underwood"},
    age: 52,
    income: 100000,
    household_size: 2,
    gender: "Male",
    education: "College"
  }
]

puts "Average Age: #{constituency.reduce(0) { |sum, constituent| sum += constituent[:age] }.to_f / constituency.length}"
puts "Average Income: #{constituency.reduce(0) { |sum, constituent| sum += constituent[:income] }.to_f / constituency.length}"
puts "Average Household Size: #{constituency.reduce(0) { |sum, constituent| sum += constituent[:household_size] }.to_f / constituency.length}"
puts "Female %: #{(constituency.select { |constituent| constituent[:gender] == "Female"}.length.to_f / constituency.length) * 100 }"
puts "Male %: #{(constituency.select { |constituent| constituent[:gender] == "Male"}.length.to_f / constituency.length) * 100 }"
puts "Unspecified Gender %: #{(constituency.select { |constituent| constituent[:gender] == "Unspecified"}.length.to_f / constituency.length) * 100 }"
puts "College %: #{(constituency.select { |constituent| constituent[:education] == "College"}.length.to_f / constituency.length) * 100 }"
puts "High School %: #{(constituency.select { |constituent| constituent[:education] == "High School"}.length.to_f / constituency.length) * 100 }"
puts "Did Not Finish High School %: #{(constituency.select { |constituent| constituent[:education] == "Did Not Complete High School"}.length.to_f / constituency.length) * 100 }"
