#inheritance 
class ClassA

	def show
		puts "Welcome to IncludeHelp"
	end
	def message
		puts "Enter your name: "
		nm=gets.chomp
		puts "Hello #{nm}, I hope you are doing great"
	end
end 

class ClassB < ClassA
	def hello
		puts "Hello World!"
	end
end

ob1=ClassB.new
ob1.show
ob1.message
ob1.hello
