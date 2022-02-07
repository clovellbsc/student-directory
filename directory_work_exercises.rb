def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  
  students = []
  
  puts "Please enter their cohort"
  cohort = gets.chomp.to_sym
  
  puts "To finish, just hit return twice"
  
  while !name.empty? do
    if cohort.empty? 
<<<<<<< HEAD
      students << {name: name, cohort: :november}
    else 
      students << {name: name, cohort: cohort}
=======
      students << {name: name, cohort: cohort}
    else 
      students << {name: name, cohort: :november}
>>>>>>> 518c3b4b508bb93581b3f4e15e3d0c8807b8df7d
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