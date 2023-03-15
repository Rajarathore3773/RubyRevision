 # method overridding
 #instance varialble ko another class me bhi access kar sakte hai.
class Animal
	#attr_accessor:width,:height
	def initialize (w,h)
		@width,@height = w,h
	end
	
	def getArea 
		return "The Area  box #{@width*@height}"
	end
end 

class Cat < Animal

def speak 
	puts "Meooooooooooo"
end
def getArea 
	puts super()  #method Overriding
	return "The Area  sqr #{@width*@height*2}"
end

def printWidth
	puts "box width #{@width*@height*3}"
end

end

cat = Cat.new(5,3)
puts cat.inspect
puts cat.speak
puts cat.getArea
puts cat.printWidth



