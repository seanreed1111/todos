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

# puts "ruby_school[:name] is a #{(ruby_school[:name]).class}" #String
# puts "ruby_school[:location] is a #{(ruby_school[:location]).class}" #String
# puts "ruby_school[:instructors] is a #{(ruby_school[:instructors]).class}" #Array
# puts "ruby_school[:students] is a #{(ruby_school[:students]).class}"  #Array

#ruby_school[:students].each {|item| puts item[:name]}


# ruby_school[:students].each do |item|
#   puts item
#   item.each do |key, value|

#   puts "#{key}, #{value}"
  
#   end
# end

# puts ruby_school[:students][1] #{name: "Billy", grade: "F"}
# puts "Attempting to delete student Billy/n"

# ruby_school[:students].delete_at(1) #this deletes Billy!
# puts ruby_school[:students]

#   d. Add a key to every student in the students array called "semester" 
#and assign it the value "Summer".
# so, to do this, I need to merge the hash {semester: "Summer"} to each student's hash


# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2) { |key, v1, v2| v1 }
#                 #=> {"a"=>100, "b"=>200, "c"=>300}

#ruby_school[:students].each {|item| item.merge!({semester: "Summer"})} #3d this works!

#3e Change Ashley's subject to "being almost better than Blake"
# Ashley is ruby_school[:instructors][1]
# puts ruby_school[:instructors][1]
# ruby_school[:instructors][1][:subject] = "being almost better than Blake"
# puts ruby_school[:instructors][1]
# ruby_school[:students][2][:grade] = "F"
# puts ruby_school[:students][2]


#this for loop works, but it is very non Ruby
# for num in 0..ruby_school[:students].length-1

#   if ruby_school[:students][num][:grade] == "B"
#     puts "The student with the grade of B is #{ruby_school[:students][num][:name]}" 
#   end
# end

# ruby_school[:students].each do |item|

#   puts "#{item[:name]} has a grade of B." if item[:grade]=="B"
    
# end

# 3h Return the subject of the instructor "Jeff".

# ruby_school[:instructors].each do |item|

#   puts "Jeff's subject is #{item[:subject]}" if item[:name]=="Jeff"
    
# end

#3i print out all the  values in the school
# ruby_school.each_value do |value|
#   puts "#{value}"
#   puts "value.is_a?(Hash) = #{value.is_a?(Hash)}"
#   puts "value.is_a?(Array) = #{value.is_a?(Array)}"
#   puts "value.kind_of?(String) = #{value.kind_of?(String)}"
# end

# this puts the value of all the items
# ruby_school.each_value do |outer_value|
  
#   if outer_value.kind_of?(String) 
#     puts outer_value 
#   else
#     outer_value.each do |inner_value| 
#       inner_value.each_value {|inner_inner_value| puts inner_inner_value}
#     end
#   end
# end


# ##4. Methods

#   Note: You will need to pass the school variable to each of these methods to include it in scope.

#   a.  
#    i. Create a method to return the grade of a student, given that student's name.
#    ii. Then use it to refactor your work in 3.i. 

# def return_grade(school_name, student_name)
#   school_name[:students].each do |item|
#     item.each do |k,v|
#       if item[:name] == student_name
#         return item[:grade]
#         #break
#       end 
#     end
#   end
#   return nil
# end

# def return_grade(school_name, student_name)
# school_name[:students].each {|item| return item[:grade] if item[:name]== student_name}
# end



# puts return_grade(ruby_school, "Frank")

# def update_subject(school_name, instructor_name, new_subject)
#   school_name[:instructors].each do |instructor|
#     instructor[:subject] = new_subject if instructor[:name]== instructor_name
#   end
# end

# update_subject(ruby_school, "Blake", "being terrible")
# puts ruby_school[:instructors]

# def new_student(school_name, student_info)
#   school_name[:students] << student_info
# end
  
# my_info = {name: "Sean", grade: "A+", semester: "Summer"}

# new_student(ruby_school, my_info)
# puts ruby_school[:students]

# ruby_school = { 
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

def add_new_key(school_name, key, value)
  school_name[key] = value
end

add_new_key(ruby_school, :ranking, 1)
ruby_school.each {|item| puts item}


  
