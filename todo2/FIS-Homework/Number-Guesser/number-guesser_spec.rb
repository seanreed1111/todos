# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect
 
# CHALLENGE:
# Write a test to check that your file correctly tells the user if they are right or wrong.
# (NOTE: you may have to put your code in a method... 
#	use the tests and solutions you've seen to help you structure your code)

# require_relative './dice'

# describe Dice, "#roll" do

#   it "should return an Integer" do
#     expect(Dice.new.roll).to be_a(Integer)
#   end

#   it "should return a number greater than 0" do
#     Dice.new.roll.should be > 0
#   end

#   it "should return a number less than 7" do
#     Dice.new.roll.should be < 7
#   end

# end

# require_relative './is_between'

# describe Integer, "#is_between?" do

#   it  "should return true if the number is between the two numbers" do
#     15.is_between?(12, 18).should eq(true)
#   end

#   it "should return false if the number is not between the two numbers" do
#     15.is_between?(2, 8).should eq(false)
#   end

# end

# require_relative './teenager'

# describe "#is_a_teenager?" do
#   it "returns false if the person is younger than 13" do
#     is_a_teenager?(12).should eq(false)
#   end

#   it "returns false if the person is older than 19" do
#     is_a_teenager?(20).should eq(false)
#   end

#   it "returns true if the person is between the ages of 13 and 19" do
#     is_a_teenager?(15).should eq(true)
#   end
# end

# require_relative "../robot"

# RSpec.configure do |config|
#   config.mock_framework = :mocha
# end

# describe Robot do

#   let(:robot) { Robot.new }
  
#   context "after the 15th" do

#     before(:each) do
#       date = mock()
#       date.stubs(:day => 17)
#       Date.stubs(:today => date) 
#     end

#     it "should be happy if the day of the month is after the 15th AND
#     the temperature is hotter than 70 degrees." do
#       robot.temperature(71).should eq("I am happy")
#     end

#     it "should be happy if the day of the month is after the 15th AND
#     the temperature is hotter than 70 degrees." do
#       robot.temperature(100).should eq("I am happy")
#     end

#     it "should be very happy if the day of the month is after the 15th AND
#     the temperature is hotter than 100 degrees" do
#       robot.temperature(101).should eq("I am very happy")
#     end

#     it "should be miserable if its after the 15th AND
#     the temperature is 70 degrees or colder" do
#       robot.temperature(70).should eq("I am miserable")
#     end
#   end

#   context "before the 15th" do

#     before(:each) do
#       date = mock()
#       date.stubs(:day => 14)
#       Date.stubs(:today => date) 
#     end

#     it "should be sad if the day of the month is on or before the 15th AND
#     the temperature is hotter than 70 degrees." do
#       robot.temperature(71).should eq("I am sad")
#     end

#     it "should be sad if the day of the month is on or before the 15th AND
#     the temperature is hotter than 70 degrees." do
#       robot.temperature(100).should eq("I am sad")
#     end

#     it "should be very sad if the day of the month is on or before the 15th AND
#     the temperature is hotter than 100 degrees" do
#       robot.temperature(101).should eq("I am very sad")
#     end

#     it "should be very miserable if its on or before the 15th AND
#     the temperature is 70 degrees or colder" do
#       robot.temperature(70).should eq("I am very miserable")
#     end
    
#   end

#   context "your name begins with a-j" do
#     # if your name begins with the letters a-j
#     # your robots optimal weight is your weight - 100, 
#     # and if that is greater than 30 your robots optimal weight is 300
#     it "weight less than 31" do
#       robot.optimal_weight(110).should eq(10)
#     end

#     it "weight greater than 30" do
#       robot.optimal_weight(131).should eq(300)
#     end

#     # if you name begins with the letters k-z
#     # your robots optimal weight is your weight + 46, 
#     # and if that is greater than or equal to 50 your robots optimal weight is 0
#     # if that is less than 50 your robots optimal weight is 1000

#   end

#   context "your name beings with k-z" do
#     it "weight less than 50" do
#       robot.optimal_weight(3).should eq(1000)
#     end

#     it "weight greater than or equal to 50" do
#       robot.optimal_weight(4).should eq(0)
#     end
#   end

#   it "#optimal_height" do
#     robot.optimal_height(43).should eq(307.14285714285717)
#   end

# end