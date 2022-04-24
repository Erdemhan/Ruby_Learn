# First Steps on Ruby
=begin
  First Steps on Ruby
  Created by Erdemhan Özdin at 24.04.2022
=end

# Hello World
puts "Hello World"


# Basic I/O
firstNumber = gets.to_i
secondNumber = gets.to_i
result = "Result = " + (firstNumber + secondNumber).to_s
print result + "\n"


# Strings
mString = "10001111"
puts mString.length()
puts mString.to_i(2)
puts mString.index("1")
puts mString[0,4]


# Arrays
langs = ["Ruby" , "Python" , 3.14 , false]
puts langs[0]
puts langs[-1]
puts langs[0,3]


# Hash
cities = {
  "Kayseri" => 1.5,
  "Ankara" => 7,
  "İstanbul" => 20
}
puts cities
puts cities["Kayseri"]


# Function
def mFunction(x = -1 , y = 2 , z = 1)
  puts "mFunction --> " + (x*y+z).to_s
  return x**y
end

mFunction(1,2,3)
mFunction(0)
puts(mFunction)


# Condition
flag = true
if flag
  puts "You got this"
else
  puts "Keep Calm"
end


# Switch-Case
option = gets.to_i

case option
when 1
  puts "Option 1"
  puts "Test String"
when 2
  puts "Option 2"
else
  puts "What the Heck?"
end

# While
i = 0
while i<=9
  puts "index --> " + i.to_s
  i += 1
end


# For
for lang in langs
  puts lang
end

langs.each do |lang|
  puts lang
end

5.times do |num|
  puts num
end

for num in -1..4
  puts num
end


# File I/O
file = File.open("test_data.txt","r")
puts file.read(10)
puts file.readchar
puts file.readline
file.close

File.open("test_data.txt","r") do|file_do|
  for line in file_do.readlines
    puts "---> " + line
  end
end

File.open("test_data.txt","a") do |file_do|
  file_do.write"\ntest_line , test"
end


# Try/Catch
nums = [0,1,2,3,4]
begin
  a = nums["0"]
  puts a
  puts "Test"
rescue TypeError
  puts "Type Error!"
rescue
  puts "Error!"
end


# Class
class Movie
  attr_accessor :title,:director,:stars
  attr_reader :date
  attr_writer :isWatched

  def initialize(title,director,stars,date,isWatched)
    @title = title
    @director = director
    @stars = stars
    @date = date
    @isWatched = isWatched
  end

  def isWatch
    return @isWatched
  end

end

movie_f = Movie.new("test_t","test_d",["test_s" , "test_ss"],10001,false )
puts movie_f.isWatch


# Module
require_relative 'MyModule'
include TestFunctions

TestFunctions.hello("Erdemhan")



