=begin
Note :- block ka use karne ke liye , block ka name method ke name jesa same hoga
or , block ko method me call karne ke liye "yield" statement/keyword ka use karenge.
=end
def test
    yield
  
    puts "test methdo1"
     yield
    puts "test methdo2"
    
  end
  
  test{
    a=5
    b=10
    p a+b
    puts "This is test Block"

    for i in 1..5 do 
      puts i
    end

  }

=begin
Note :- Ruby has a concept of Block.

A block consists of chunks of code.

You assign a name to a block.

The code in the block is always enclosed within braces ({}).

A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.

You invoke a block by using the yield statement.
=end

puts "------------------- yield statement is written followed by parameters ----------------------"

def test1
    puts "You are in the Test method"
    yield 5,10   #If you want to pass more than one parameters, then the yield statement becomes −


    puts "You are again back to the  Test method"
    yield 100
 end
 test1 {
   |i,j|
   puts "test block #{i} #{j}"  #Here, the value 5,10 is received in the variable i. Now, observe the following puts statement −


 }
=begin
Note :- Here, the yield statement is written followed by parameters. You can even pass more than one parameter. In the block, you place a variable between two vertical lines (||) to accept the parameters. Therefore, in the preceding code,
 the yield 5 statement passes the value 5 as a parameter to the test block.
=end

puts "------------ Another Way call Block ------------------------"

def test(&block)
    block.call
end
  
  
  def pid
    puts "This is test  block1"
     puts "This is test  block2"
     puts "This is test  block3"
    end
  test{
    pid
    x=2
    if x<3
      puts "x is smaller than 3"
    else
       puts "x is greater than 3"
    end
  }


  puts "----------- BEGIN and END Blocks---------"

  BEGIN{
  puts "Begin block "
  }
  
 END{
  puts "End block "

 }
 puts "Without Block"