def greet(name, language = "English")
  if language.downcase == "spanish"
    greeting = "Hola"
  elsif language.downcase == "italian"
    greeting = "Ciao"
  elsif language.downcase == "french"
    greeting = "Bonjour"
  else
    greeting = ["Hi", "Yo", "Hey", "Howdy"][rand(4)]
  end

  puts "#{greeting} #{name}!"
end

greet("Dara", "French")