In this lesson, you'll use you knowledge of complex data structures to read and write to files, and parse data in comma-separated value (CSV) format.

### Learning Goals

* Write a string to a file
* Read the contents of a file
* Parse the contents of a CSV file

### Implementation Details

#### Reading and Writing

When we run a program in Ruby, we use variables and methods to manipulate the data we're working with. Once the program exits, all of those variables are discarded and any information is lost. For some programs this isn't a problem, but usually we want to save some information after a program exits.

One way that information endures between running programs is to save it to the filesystem. The technical term for this is to "persist" the data.  Fortunately, though this is a brand new concept, it uses everything you've learned about data structures.  The information you'll be saving to a file will be stored as arrays or hashes, and will therefore be accessible in the same way.  

For the examples here, we'll be creating some files, so let's move to a temporary directory where we can work. Run the following commands in a Terminal window to make a temporary directory and a ruby file within the directory:

```no-highlight
$ mkdir -p /tmp/file_test
$ cd /tmp/file_test
$ touch write_file.rb
```

Once in this directory, we can open `write_file.rb` to code a ruby program that will write a text file.

```ruby
File.open('hello.txt', 'w') do |file|
  file.puts 'hello, world!'
end
```

We save this code in a file named `write_file.rb`.   But what's going on here?  
* First, we access the `File` class that is native to Ruby.  We can access and use `File` anytime we want.  
* `.open` takes two arguments: the file we want to work with, and the action we want to take with that file.  There are a [variety of actions](http://ruby-doc.org/core-2.0.0/IO.html#method-c-new-label-IO+Open+Mode) the `File` class will recognize, but here is a basic breakdown:
  * `r`: Read - outputs the contents of the file without changing anything
  * `w`: Write - Overwrites everything in the file with new data
  * `a`: Append - Adds new data without changing existing information
So, in our example, we want to overwrite any existing information in the `hello.txt` file.

**Note:** If the file passed in as the first argument does not exist, Ruby will automatically create it, and then follow the rest of the code to completion.
* Next, we have a `do...end` block, where we establish a local variable, `file`.  `file` merely represents whatever file we're working with, in this case, `hello.txt`.
* `.puts` is a bit different than the `puts` that we're used to.  `.puts` writes the following argument, in this case, the string "hello, world!", into the file.  

Via the command line, we can determine how our program changes the filesystem. Remember that `ls` will list the files in a directory, so we first check `ls` to verify that there is only one file in the directory (our ruby script `write_file.rb`).

```no-highlight
$ ls
write_file.rb

```

Then, we run the script with `ruby write_file.rb`. When we run the `ls` command again, we notice that a file has been created named `hello.txt`.

```no-highlight
$ ruby write_file.rb

$ ls
hello.txt write_file.rb
```

We can verify that the contents of `hello.txt` are correct using the `cat` command.

```no-highlight
$ cat hello.txt
hello, world!
```

**Question:** How many arguments are passed to the `cat` command here?

{% show_hint %}
1
{% endshow_hint %}

That is the string that we used in the `File.open` block when we called `f.puts 'hello, world!'`. So even after the Ruby program has ended, our file lives on with whatever we happened to write to it. We say that the file **persists** the information created by our code because it exists beyond the running of the program.

So we can write files, but how about reading it back? In Ruby we can use the same `File.open` method to read in files as long as we pass in the `r` argument instead of `w` ('read' instead of 'write'). Go ahead and replace the code in `write_file.rb` with:

```ruby
hello_string = ""
File.open('hello.txt', 'r') do |f|
  hello_string << f.read
end
puts hello_string
```

We get back the string we originally wrote to the `hello.txt` file in our first program using the `f.read` line. There are a lot of intricacies involved with reading and writing files but Ruby does a good job of hiding those details and makes working with the filesystem relatively straightforward.

**Question:** How many arguments are passed to the `File.open` method invocation here?

{% show_hint %}
2
{% endshow_hint %}


### CSV

Our last example involved us writing a simple `hello, world!` message to a file. This is fine for a demonstration but it doesn't have a lot of utility. The reason we typically read and write files is to persist information between running our programs. To do this requires defining a structure for our data so that we can interpret it correctly when we read it again.

Let's create a `print_transactions.rb` file by running `touch print_transactions.rb` in your terminal. Let's input the following code into this file:

```ruby
# print_transactions.rb

require 'date'

all_transactions = [
  [2000.00, "payday!", Date.new(2013, 6, 26)],
  [-1250.00, "july's rent", Date.new(2013, 7, 1)],
  [-57.12, "electric", Date.new(2013, 7, 3)],
  [-7.38, "lunch at metro", Date.new(2013, 7, 4)]
]

balance = 0.0

for trans in all_transactions do
  balance += trans[0]

  puts "Amount: #{trans[0]}"
  puts "Description: #{trans[1]}"
  puts "Date: #{trans[2]}"
  puts "Balance: #{balance}"
end
```

Here we hard-coded each transaction into the program and then printed them out along with a running balance. We can test this out by running `ruby print_transactions.rb`. However, this program would be much more useful if we could read this list from a file rather than having to type it in.

When you want to persist data (in our case a list of transactions), a common structure used is a **comma-separated values (CSV)** file. Let's make that file now. On the command line:

```no-highlight
$ touch transactions.csv
```
Copy / paste the following into this new, blank file:

```no-highlight
amount,description,date
2000.00,payday!,2013-06-26
-1250.00,july's rent,2013-07-01
-57.12,electric,2013-07-03
-7.38,lunch at metro,2013-07-04
```

This is our raw CSV data. Each row represents a single record. The first row is the header, which describes what each field in a record contains. The fields themselves are separated by commas. Each line below the header describes a single transaction, with all of the information for that transaction contained in the fields. Now we can re-write our `print_transactions.rb` program to handle this new CSV data file:

```ruby
# print_transactions.rb

require 'csv'

balance = 0.0
transactions = CSV.readlines('transactions.csv', headers: true)

transactions.each do |row|
  balance += row["amount"].to_f
  puts "Amount: #{row["amount"]}"
  puts "Description: #{row["description"]}"
  puts "Date: #{row["date"]}"
  puts "Balance: #{balance}"
  puts
end
```

In this program, we're using Ruby's `CSV` class to read the file we created. Let's break this down:

* `require 'csv'` gives our ruby program access to the `CSV` class.
* The `.readlines` method does exactly what you'd think it does: It reads each line of the CSV, and stores them in a variable, `transactions`.  You'll notice that `.readlines` takes two arguments, just as `File.open` does.  The first argument is the name of the file we're working with.  The second argument, `headers: true`, tells the CSV that the first row of the file is a header, and should not count as regular data.  

Before we move forward, let's take look at exactly what `transactions` is.  Put `require 'pry'` at the top of your file, and place a `binding.pry` just above our `transactions` loop.  Run the file, and, when you hit the `pry`, enter `transactions` on the command line.

```sh
[1] pry(main)> transactions
=> #<CSV::Table mode:col_or_row row_count:5>
```
We see that `transactions` contains a **CSV object**.  How on earth do we work with that?  Well, a CSV object is actually an array of hashes.  Let's prove that:

```sh
[2] pry(main)> transactions.first
=> #<CSV::Row "amount":"2000.00" "description":"payday!" "date":"2013-06-26">
```
By using the `.first` method from the `Array` class, we see the details of the *second* row of our CSV.  Notice that they are in key-value pairs, and that the keys are the headers in our *first* row.  That's because `headers: true` takes the first line of If we were to use the `.readlines` method without `headers: true`, the CSV object would be an array of arrays, and we'd have to access our data using indexes.  As it stands, our headers are our keys, so we can access our data as we would in any hash:

```sh
[3] pry(main)> transactions["amount"]
=> ["2000.00", "-1250.00", "-57.12", "-7.38"]
```

And this is exactly what our `.each` loop is doing.  We extract the data from each line of our CSV object as we iterate through, and print it to the terminal.  Our end result is a running balance for each transaction, as well as some additional details.

Running the program outputs the following:

```no-highlight
$ ruby print_transactions.rb
Amount: 2000.00
Description: payday!
Date: 2013-06-26
Balance: 2000.0

Amount: -1250.00
Description: july's rent
Date: 2013-07-01
Balance: 750.0

Amount: -57.12
Description: electric
Date: 2013-07-03
Balance: 692.88

Amount: -7.38
Description: lunch at metro
Date: 2013-07-04
Balance: 685.5
```

This is just for the small sample file we created, but you can supply a different file with hundreds of transactions and the program should run just fine. In fact, CSV is a very common format and some banks let you download your account history as a CSV file that you could process or open in a program like Excel. Using a standardized format like CSV allows you to leverage core libraries rather than trying to define your own protocol for storing data.

### A Final Note on CSV

`CSV` is very similar to `File`.  It simply has a different way of organizing data, a way which is often better for our purposes.  But `CSV` still has the same methods for reading, writing, and appending to the file.  In other words, you could add a transaction to your record like so:

```ruby
CSV.open('transactions.csv', 'a') do |file|
  file << [100, 'test_des', 'test_date']
end
```
Remember, without headers, the rows in the CSV object are actually arrays.  So all we have to do is shovel in a new array, and `CSV` will attach the headers, making them key-value pairs, and as readable as the rest of the data.

### The Moral of the Story

1) Files Can Persist Data For Your Programs

* Use files as the simplest form of reading and writing data in your programs. Files and their contents will be persisted after a program runs.

2) Embrace Standard Formats to Avoid Unnecessary Work

* Using the `File` and `CSV` classes  follows two key principles of writing code. First, it will make writing code easier on you, instead of struggling to work with less refined methods and data objects. Second, it will make it easier on any other developer who looks at your code, allowing them to quickly grasp the flow of the program.

### Why This Is Important

#### A lot can be done with files

When it comes to structured data, CSV is useful not only for the reasons of providing structure, but also because of the simple, compatible nature of the file format with tools like spreadsheets. And when it comes to reading data, most databases have CSV export capacities, allowing you to access their data when access to the database itself is impossible. Sample datasets are often delivered in the form of CSV files.
