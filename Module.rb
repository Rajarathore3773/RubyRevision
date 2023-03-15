module Sum
   module Demo
    def sumWithProc
      lambda = Proc.new{ |a,b,c| puts a+b+c}
      lambda.call(1,2,3)
    end

    def sumWithLambda
        lambda =-> (x,y,z) {puts x+y+z}
        lambda.call(3,4,5)
    end
  end
end

class R 
  include Sum::Demo
end

r = R.new
r.sumWithLambda
r.sumWithProc

puts "--------- Define a method with module-name in module"
module Moral
  def Moral.name
    puts "i am Moral-Module method"
  end
end

Moral.name

puts "-------Mixins in Ruby Statement----------"

module A
  def a1
    puts "A1"
  end
  def a2
    puts "a2"
  end
end
module B
  def b1
    puts "b1"
  end
  def b2
    puts "b2"
  end
end

class Sample
include A
include B
  def s1
    puts "s1"
  end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
