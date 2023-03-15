class Demo
    def test
      test1
      puts ":Hii TEam"
    end
  
    private 
   def test1
       puts "i am private method"
    end
  end
  
  demo = Demo.new
  demo.test