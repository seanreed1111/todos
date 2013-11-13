
# 1 Arrays
# array = ["Blake","Ashley","Jeff"]`
# a. Add a element to an array
# b. Write a statement to print out all the elements of the array.
# c. Return the value at index 1.
# d. Return the index for the value "Jeff".

array = ["Blake", "Ashley", "Jeff"]
array << "Sean"
array.each {|item| puts item}
puts "The value at index 1 of the array is #{array[1]}"
length_array = array.length
for num in 0..length_array
	puts "The index value for Jeff is #{num}." if array[num] == "Jeff" 
end

###2. Hashes

# instructor = {:name=>"Ashley", :age=27}

# a. Add a new key for location and give it the value "NYC".
  
# b. Write a statement to print out all the key/value pairs in the hash

# c. Return the name value from the hash.

# d. Return the key name for the value 27.

instructor = {name: "Ashley", age: 27}
instructor["location"] = "NYC"
instructor.each {|key,value| puts "#{key}, #{value}"}
puts instructor[:name]
instructor.each {|key,value| puts "The key name for the value 27 is #{key}" if value == 27}

# ###3. Nested Structures

#   ```ruby
# school = { 
#   :name => "Happy Funtime School",
#   :location => "NYC",
#   :instructors => [ 
#     {:name=>"Blake", :subject=>"being awesome" },
#     {:name=>"Ashley", :subject=>"being better than blake"},
#     {:name=>"Jeff", :subject=>"karaoke"}
#   ],
#   :students => [ 
#     {:name => "Marissa", :grade => "B"},
#     {:name=>"Billy", :grade => "F"},
#     {:name => "Frank", :grade => "A"},
#     {:name => "Sophie", :grade => "C"}
#   ]
# }
#   ```

#   a. Add a key to the school hash called "founded_in" and set it to the value 2013. 
#   b. Add a student to the school's students' array.

#   c. Remove "Billy" from the students' array.
#   d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
#   
#  e. Change Ashley's subject to "being almost better than Blake"
#   f. Change Frank's grade from "A" to "F".
#   **g. Return the name of the student with a "B".
#   h. Return the subject of the instructor "Jeff".
#   i. Write a statement to print out all the values in the school. ***FLAG


ruby_school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

ruby_school[:founded_in] = 2013
new_student = {name: "Little Bobby Tables", grade: "A+"} #part a
ruby_school[:students] << new_student  #part b

puts "Deleting student Billy"

ruby_school[:students].delete_at(1) #part 3c.  deletes Billy's record
ruby_school[:students].each {|item| item.merge!({semester: "Summer"})} #part 3d adds Summer Semester
ruby_school[:instructors][1][:subject] = "being almost better than Blake" #part 3e
ruby_school[:students][2][:grade] = "F" #part 3f

#this is 3g -- rewrite with each blocks
for num in 0..ruby_school[:students].length-1

  if ruby_school[:students][num][:grade] == "B"
    puts "The student with the grade of B is #{ruby_school[:students][num][:name]}" 
  end
end

# this is 3g with .each
ruby_school[:students].each do |item|

  puts "#{item[:name]} has a grade of B." if item[:grade]=="B"
    
end

#3h
ruby_school[:instructors].each do |item|

  puts "Jeff's subject is #{item[:subject]}" if item[:name]=="Jeff"
    
end

#3i
ruby_school.each_value do |outer_value|
  
  if outer_value.kind_of?(String) 
    puts outer_value 
  else
    outer_value.each do |inner_value| 
      inner_value.each_value {|inner_inner_value| puts inner_inner_value}
    end
  end
end

# Question #4
#
#
#
#4a
def return_grade(school_name, student_name)
school_name[:students].each {|item| return item[:grade] if item[:name]== student_name}
end

#4b
 
   i.Create a method to udpate a instructor's subject given the instructor and the new subject.
   ii. Then use it to update Blake's subject to "being terrible".

def update_subject(school_name, instructor_name, new_subject)
  school_name[:instructors].each do |instructor|
    instructor[:subject] = new_subject if instructor[:name]== instructor_name
  end
end

update_subject(ruby_school, "Blake", "being terrible")

#4c
# i. Create a method to add a new student to the schools student array. 
# ii. Then use it to add yourself to the school students array.

def new_student(school_name, student_info)
  school_name[:students] << student_info
end
  
my_info = {name: "Sean", grade: "A+", semester: "Summer"}

new_student(ruby_school, my_info)

# 4d
#
#i. Create a method that adds a new key at the top level of the school hash, given a key and a value. 
#ii. Then use it to add a "Ranking" key with the value 1.

def add_new_key(school_name, key, value)
  school_name[key] = value
end

add_new_key(ruby_school, :ranking, 1)


# 5. Object Orientation

# a. Create a bare bones class definition for a School class.

# b. Define an initialize method for the School class.
# i. Give your School class the instance variables: 
# => name, location, ranking, students, instructors. 
# NOTE: These variables should be of the same type 
# => as they are in the hash above.


class School
	attr_reader :ranking
	attr_accessor :name, :location, :students, :instructors

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = students
		@instructors = instructors
	end

	def set_ranking(ranking)
		@ranking = ranking
	end

	def add_student(name, grade, semester)
	end

	def remove_student(name)
	end

# Create an array constant SCHOOLS that stores 
#  all instances of your School class.

# write a method reset to empty all SCHOOLS from SCHOOLS constant
	def reset
	end

end