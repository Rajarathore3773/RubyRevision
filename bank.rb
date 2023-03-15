class BankAccount
    def initialize(balance)
      @balance = balance
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
    
    private
    
    def calculate_interest_rate
      # implementation details
    end
  end
  