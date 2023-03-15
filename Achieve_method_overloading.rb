=begin
Note :- Esme ko method overloading achieve nhi kra hai bus, 
only one ,two ya Three  variable ke liye concept hai.if we pass Three variable this is not perform the task.
=end

class Demo 
    def addition(a,b)
        if (a.class==Integer) && (b.class==Integer) 
        return a+b
          elsif (a.class==Float) && (b.class==Float) 
          return a-b
        else
            return a,b
        end
    end  
end

demo = Demo.new
puts  demo.addition(10,25)
puts  demo.addition("ram","bam")
puts  demo.addition(15.0,5.0)
