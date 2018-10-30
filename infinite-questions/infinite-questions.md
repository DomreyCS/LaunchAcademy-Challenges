### Part 1

Time to get some customers some snacks! Write a program that asks your
customer if you can get them anything, and then accepts their input. If
they typed anything other than "no", the loop should run again! After the
loop ends, say goodbye.

### Example Output

```no-highlight
Can I get you anything?
> A soda, please
Can I get you anything?
> Nah, that's okay.
Can I get you anything?
> Shut up you stupid machine!
Can I get you anything?
> Oh god, this will never end will it...
Can I get you anything?
> no
Okay, bye!
```

{% show_solution %}
```ruby
answer = ""

while answer != "no" do
  puts "Can I get you anything?"
  print "> "
  answer = gets.chomp
end

puts "Okay, bye!"
```
{% endshow_solution %}


### Part 2 - Use Pry to Learn More About Loops

Did you know you can use `pry` to help debug your loops?
On the line after you store the user's answer, insert a
`binding.pry` statement. Now, run the program. Allow the loop to run a few
times. You can also press CTRL-D in pry to move onto the next run of the loop!
Check the value of `answer` a few times when prompted by `pry` to confirm your
understanding of how the loop is working. When at the `pry` prompt, you can also
change the value of the `answer` variable.

{% show_solution %}
```ruby
require 'pry'

answer = ""

while answer != "no" do
  puts "Can I get you anything?"
  print "> "
  answer = gets.chomp
  binding.pry
end

puts "Okay, bye!"
```

```no-highlight
> ruby code.rb
Can I get you anything?
> Yes please!
pry > CTRL-D
Can I get you anything?
> Cookies sound delicious!
pry > CTRL-D
Can I get you anything?
> I'd love some ice cream!
pry > answer = "no"
pry > CTRL-D
Okay, bye!
```
{% endshow_solution %}
