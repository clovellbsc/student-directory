def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  
  students = []
  
  puts "Please enter their cohort"
  cohort = gets.chomp.to_sym
  
  puts "To finish, just hit return twice"
  
  while !name.empty? do
    if cohort.empty? 
      students << {name: name, cohort: cohort}
    else 
      students << {name: name, cohort: :november}
    end
    puts "Now we have #{students.count} students"
    puts "Name"
    name = gets.chomp
    puts "Cohort"
    cohort = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  counter = 0
  while counter < students.length do
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)"
    counter += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)