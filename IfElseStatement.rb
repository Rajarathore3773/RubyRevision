puts "--------------If-Else statement-----------"

x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

puts "--------------If Modifier-----------"

x = 1
print "x is smaller than 2\n" if x<2
print "x i grater than 2"

puts "-------------Ruby unless Statement-----------"
x = 4
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end

puts "------------Ruby unless modifier-------------"

var = "Ram"
print "true\n"  if var == "Ram"
print "false\n"

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var


puts "----------Ruby case Statement-----------"

$age =  4
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end