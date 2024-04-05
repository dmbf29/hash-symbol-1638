# Q1 - What’s a variable?
# What’s the point of using variables? Give an example.
# A box where we can store and reuse a value. It can be reassigned
age = 10

# Q2 - Precisely describe the following line of code using the correct vocabulary.
age = 18
# 18 is an integer assigned to the variable age

# Q3 - What’s a method? What’s the point of defining methods?
# A reusable block of code that returns a dynamic output given certain parameters

# Q4 - Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # defines the method multiply. takes 2 parameters x and y
  return x * y     # doing the multiplication and returning it
end                # end....

puts multiply(5, 8) # calling the method and passing 2 arguments. then display the output

# Q5 - What’s the keyword if ?
# if is conditional statement

# Give us an example of if statements, using an age variable storing a student’s age for instance.

# TODO: write some code with `if`
age = 21
if age >= 20
  puts 'You are old enough to drink!'
else
  puts 'You are NOT old enough to drink'
end


# Q6 - Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
sum = 0.0
grades.each do |grade|
  sum += grade
end
# average = sum.to_f / grades.size
average = sum.fdiv(grades.size)

# Q7 - Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).
def capitalize_name(first_name, last_name)
  # Interpolation -> building one string and inserting value (need double quotes)
  "#{first_name.capitalize} #{last_name.capitalize}"

  # Concatenation -> adding them
  first_name.capitalize + ' ' + last_name.capitalize
end

# Q8 - What’s the difference between concatenation and interpolation? Give an example.


# CRUD Array
# Q9 - Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
# fruits.delete('orange')
fruits.delete_at(-1)

# Q10 - Translate each line of pseudo-code into ruby. (HASH Crud)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = 'Eiffel Tower'

# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor] # => nil

# Q11 - Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?
# They are symbols

# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
# TODO: Convert the array of arrays into an array of hashes.
students.map do |student_array|
  {
    name: student_array.first,
    age: student_array.last
  }
end

students.map do |name, age|
  {
    name: name,
    age: age
  }
end
