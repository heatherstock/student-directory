=begin
student info
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
=end

#This takes names and puts them into hash within array
def input_students
  puts "Please enter the names of students"
  puts "To finish, just hit return twice"


  # create an empty array
  students = []
  #get first name
  name = gets.chomp!

  # while the name is not empty, repeat this code
  while !name.empty? do

    #add student hash to array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    #get more names from user
    name = gets.chomp!
  end
  #return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

#This uses the array of hashes to puts names and cohort. Indexed+1
def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#This takes some limitations and applies them to the array of hashes of students
def print_few(students)
  puts " "
  puts "Students with names beginning with T or less than 12 letters"
  students.each do |student|
    name = student[:name]
    if name.length < 12 || name[0] == "T"
      puts name
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end


students = input_students

#we need to call methods
print_header
print(students)
print_footer(students)
print_few(students)
