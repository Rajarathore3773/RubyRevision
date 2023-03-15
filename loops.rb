=begin
Note :- While and Until as Modifiers
We can use while and until as modifiers as they reduce the complexity and size of the code. 
We will learn how to use them as modifiers in the blog section.
=end

puts "---------Ruby while Statement-----------"
$i = 1
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

puts "-------Ruby while modifier------------"

$i=0
$num=4

begin 
  puts("Inside the loop i = #$i" )
  $i +=1
end while $i< $num

puts "--------------Ruby until Statement-----------"
 i =1
 num=5
 until  i>5 do
  puts "Inside until loop #{i}"
  i+=1
 end


 puts "------------Ruby until modifier---------"
 i =0
 num=5
 begin
  puts "Inside until loop:- #{i}"
  i+=1
 end until i>num


 puts "---------------Ruby for Statement-----------"

 for i in 1..5
  puts "Value of local variable is #{i}"
end

 puts "---------------Ruby each Statement-----------"

 (1..5).each do |i|
  puts "Value of local variable is:- #{i}"

 end


 puts "------------Ruby break Statement-------------"
 (1..5).each do |a|
    if a >2 then 
      break
    end
    puts "Value of local variable is:- #{a}"

 end

 pduts "---------------------Ruby next Statement----------"
for i in 0..5
  if i < 3 then 
    next
  end
  puts "Value of local variable is:- #{i}"

end

for i in 0..5
  retry if i > 2
    puts "Value of local variable is #{i}"
   end
end


 
