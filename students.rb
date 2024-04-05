students = ['rei', 'matt', 'kimberly', 'andrew']
students_age = [20, 25, 30, 35]

students.each_with_index do |name, index|
  age = students_age[index]
  "#{name} is #{age} years old"
end

students_age = {
  "rei" => 20,
  "matt" => 25,
  "kimberly" => 22,
  "andrew" => 20
}
# p students_age[0][1]
# p students_age['rei']['age']

# Hash CRUD
# Create
# hash[new_key] = value
students_age['moritz'] = 27


# Read
# hash[key]
students_age["andrew"]
students_age['vincent'] # nil
students_age.key?('andrew')
students_age.value?(40)
students_age.keys
students_age.values

# Update
# hash[key] = new_value
students_age['moritz'] = 28

# Delete
# hash.delete(key)
students_age.delete('moritz')


students = ['rei', 'matt', 'kimberly', 'andrew']

# Array CRUD

# Create
students << 'justin'

# Read
students[0]

# Update
students[0] = 'stan'

# Delete
students.delete('stan')
students.delete_at(-1)


# Iteration
students_age = {
  "rei" => 20,
  "matt" => 25,
  "kimberly" => 22,
  "andrew" => 20
}

# when iterating over a hash, we have the key AND value in the parameters
# students_age.each do |name, age|
#   puts "#{name} is #{age} years old"
# end

m_names = students_age.all? do |name, age|
  name.start_with?('m')
end

p m_names
