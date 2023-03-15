=begin
Note:-
Key takeaways:- 
Class methods can only be called on classes
Instance methods can only be called on instances of classes
Class methods are always defined def self.method_name
Instance methods are always defined def method_name

=end
=begin
In the above example, "class_method" is a class method, and it can only be called on the "Example" class itself (not on an instance of the class).

Note that in Ruby, there are also other types of methods, such as private and protected methods, which control access to certain methods within a class.
=end

class Example
    def self.class_method
      puts "I am a class method"
    end
    def instance_method
      puts "I am an instance method"
    end

    def test(a1 = "Ruby", a2 = "Perl")
      puts "The programming language is #{a1}"
      puts "The programming language is #{a2}"
   end
   
end
  
 Example.class_method
 Example.new.instance_method
 Example.new.test


 puts "------Return Values from Methods & Ruby return Statement--- "

 def test
  i,j,k=10,20,30
  return i,j,k
 end
 p test

 puts "--------------- Variable Number of Parameters ------------- "

 def sample(*arr)
  puts "The number of parameter is :-  #{arr.length}"
  for i in 0...arr.length
     puts "The parameters are - #{arr[i]}"
  end
 end

 sample "a", "1", "b", "2"
 sample "zara", 1, "Puma"

