puts "-----------------#Global Variable-------------" 
$global_variable =10

class Demo 
    def test
        puts "Access Global Variable :- #{$global_variable}"
    end
end

class Demo1 
    puts "#{$global_variable}"
    def test1
        puts "Access Global Variable Another class :- #{$global_variable}"
    end
end

Demo.new.test
Demo1.new.test1

puts "------------#Instance Variables------------"


 class Instance1
    def initialize(id,name,age)
        @id,@name,@age = id,name,age
    end

    def print
        puts "This is user id:- #{@id}"
        puts "This is user name:- #{@name}"
        puts "This is user age:- #{@age}"
    end
 end
 Instance1.new(101,"Raja",22).print

 puts "------------#class Variables------------"
 class  Customer
    @@name = "Ruby"
    @@name1="Rails"
    def print
        puts "Customer name:- #{ @@name}"
    end
    def print1
        puts "Customer name:- #{ @@name1}"
    end
end

Customer.new.print

Customer.new.print1


puts "------------#Local Variables------------"

class Example
    c=500 #can't access local variable in methods
    def show
        a = 100
        b = 200
       puts "Value of first Local is #{a}"
       puts "Value of second Local is #{b}"
      # puts "Value of second Local is #{c}"
    end
 end
 
 # Create Objects
 object = Example.new()
 object.show

puts "------------#Costant Variables------------"

 class Exam
    VAR1 = 10
    VAR2 = 20
    def show
       puts "Value of first Constant is #{VAR1}"
       puts "Value of second Constant is #{VAR2}"
    end
 end
 
 # Create Objects
 object = Exam.new
 object.show


