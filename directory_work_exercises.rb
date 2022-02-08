def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  
  students = []
  
  puts "Please enter their cohort"
  cohort = gets.chomp.to_sym
  
  
  
  while !name.empty? do
    if cohort.empty?
      students << {name: name, cohort: :november}
    else 
      students << {name: name, cohort: cohort}
    end
    if students.length == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
    puts "To finish, just hit return twice" 
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
  if students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
print_header
print(students)
print_footer(students)