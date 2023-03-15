puts "---------1. Arithmetic Operators---------------"
a = 20
b = 10
puts("Addition of two number:")
puts(a + b)
puts("Subtraction of two number:")
puts(a - b)
puts("Multiplication  of two number:")
puts(a * b)
puts("Division  of two number:")
puts(a / b)
puts("Exponential  of two number:")
puts(a ** b)
puts("Modulus  of two number:")
puts(a % b)


puts "----------------2. Comparison Operators----------"

a = 50
b = 20
puts(a == b)
puts(a != b)
puts(a > b)
puts(a < b)
puts(a >= b)
puts(a <= b)
puts(a <=> b)
puts(a .eql? b)

puts "---------------3. Logical Operators-------------"

# Variables
a = 10
b = 20
c = 30
 
# using && operator
if a == 10 && b == 20 && c == 30
    puts "Logical AND Operator"
    puts result = a * b * c
end
 
# using || operator
puts "Logical OR operator"
if a == 10 || b == 20
    puts result = a + b + c
end
 
# using ! operator
puts "Logical Not Operator"
puts !(true)
    
puts "-------------4. Assignment Operators----------"

a = 22
b = 11
puts(a = b)
puts(a += b)
puts(a *= b)
puts(a /= b)
puts(a **= b)
puts(a %= b)

puts "----------5. Bitwise Operators-------"

# variables
a = 10
b = 20
 
puts "Bitwise AND operator"
puts (a & b)
 
puts "Bitwise OR operator"
puts (a |b)
 
puts "Bitwise XOR operator"
puts (a ^ b)
 
puts "Bitwise Complement operator"
puts (~a)
 
puts "Binary right shift operator"
puts (a >> 2)
 
puts "Binary left shift operator"
puts (a << 2)


puts "-----------Ternary Operator---------"

 
# variable
marks_obtained = 100
 
# using ternary operator
result = marks_obtained > 40 ? 'Pass' : 'Fail'
 
# displaying output
puts result


puts "----------------Range Operators------------"

# using .. Operator
range_op = (7 .. 10).to_a
 
# displaying result
puts "#{range_op}"
 
# using ... Operator
range_op1 = (7 ... 10).to_a
 
# displaying result
puts "#{range_op1}"


puts "--------------- defined? Operators------------"
x =  1
Height = 100
puts ("defined operator in Ruby :-")
puts defined? x               # "local-variable"
 puts defined? 12              # "expression"
 puts defined? y               # nil insted of (blank_line)
 puts defined? puts            # "method"
 puts defined? Height          # "constant"
 puts defined? $&              # nil insted of (blank_line)
 puts defined? $_              # "global-variable"
 puts defined? Math::PI        # "constant"
 puts defined?( c = 22 )       # "assignment"
 puts defined? 12.abs          # "method"
