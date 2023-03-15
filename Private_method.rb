class BankAccount
   
    def initialize( balance)
      @balance =  balance
    end
    
    def deposit(amount)
      @balance += amount
    end
    
    def withdraw(amount)
      @balance -= amount
    end
    
    def balance
      @balance
    end
    
    
    #private
    def calculate_interest_rate(r,t)
     @r,@t= r,t
     b=@balance

     si = (b*(@r*@t))/100
    end
   
  end

  puts "please enter the balance ammount"
  balance = gets.chomp.to_i
  bankaccount = BankAccount.new(balance)

 puts "please enter the deposite ammount"
 depo = gets.chomp.to_i
depo1 = bankaccount.deposit(depo)

puts "please enter the withdraw ammount"
with = gets.chomp.to_i
with1 = bankaccount.withdraw(with)

bal = bankaccount.balance
intr = bankaccount.calculate_interest_rate(2,12)

puts "Old balance =>  #{balance} ,&  Deposite ammount #{depo} & total adding ammount:-  #{depo1}"
puts "Withdraw ammount:- #{with}"
puts "total balance :- #{bal}"
puts "total intrest :- #{intr}"

=begin

In Ruby, private and protected methods are used to control the visibility and accessibility of methods within a class.

Private methods can only be called from within the class that defines them, 
and they are not accessible from outside the class. Private methods are typically used for implementation details that should not be exposed to the outside world.
 For example, a BankAccount class might have a private method for calculating interest rates:
=end

=begin

In the above example, calculate_interest_rate is a private method that can only be called from within the BankAccount class. 
It is used to calculate the interest rate for the account, but it is not exposed to the outside world.
=end