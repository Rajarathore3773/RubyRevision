=beging
Note :- "Statically typed languages support method overloading, 
which involves their binding at compile time. Ruby, on the other hand, 
is a dynamically typed language and cannot support static binding at all."
In languages with optional arguments and variable-length argument lists,
it is also difficult to determine which method will be invoked during dynamic argument-based dispatch. 
Additionally, Ruby is implemented in C, which itself does not support method overloading.
=end

=beging
Note :- Dynamically-typed languages are those (like JavaScript) where the interpreter assigns variables a type 
at runtime based on the variable's value at the time.
=end
class Demo 
    def addition(a,b)
        return (a+b)
    end

    def addition(a,b,c)
        return (a+b+c)
    end
end

demo = Demo.new
#puts  demo.addition(10,25)
puts  demo.addition(10,25,15)
