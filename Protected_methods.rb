class Animal
    def initialize(name)
      @name = name
    end
    
    def eat(food)
      # implementation details
      @food=food
    end
    
    def sleep
      # implementation details
      puts "sleep any time"
    end
    
    protected
    
    def speak
      # implementation details
      puts "mewoo"
    end
  end
  
  class Dog < Animal
    def bark
      speak # protected method
    end
  end

  dog =Dog.new("mohini")
puts dog.speak
  
=begin
Protected methods are similar to private methods in that they cannot be called from outside the class,
 but they can be called by other instances of the same class or its subclasses. 
 Protected methods are typically used to control access to certain methods within a class hierarchy.
  For example:


=end

=begin
In the above example, speak is a protected method that can only be called by instances of the Animal class or its subclasses. 
The Dog class subclasses Animal and defines its own bark method, which calls the speak method (which is protected).

Using private and protected methods in Ruby can help to control the visibility and accessibility of methods within a class, 
making it easier to write and maintain code that is clear, concise, and well-organized.

=end