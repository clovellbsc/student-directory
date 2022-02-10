@students = []

def hash_into_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def input_name
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  name = STDIN.gets.chomp
end 

def input_cohort(name)
  puts "Please enter the cohort of #{name}"
  cohort = STDIN.gets.chomp
end

def adding_students
  name = input_name
  while !name.empty? do
    cohort = input_cohort(name)
    hash_into_students(name, cohort)
    puts "Now we have #{@students.count} students"
    name = input_name
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    hash_into_students(name, cohort)
  end
  file.close
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
    when "1"
      puts "Input students selected"
      adding_students
    when "2"
      puts "Show students selected"
      show_students
    when "3"
      puts "Save students selected"
      save_students
    when "4"
      puts "Load Students selected"
      load_students
    when "9"
      puts "Exit selected, this programme will now terminate"
      exit
    else 
      "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def try_load_students
  filename = ARGV.first
  if filename.nil?
    load_students("students.csv")
    puts "No file passed to the ARGV, #{@students.count} students loaded from students.csv as default"
  elsif File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

try_load_students
interactive_menu