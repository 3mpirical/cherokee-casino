class GameOfChance
    def initialize()
        @bet     = 0
        @pick    = 0
        @account = 0
    end
  
  
    def menu
      puts "welcome to Game of Chance, land on the number you choose and double your money."
      user_input
    end
  
    def menu_2
     puts "1 to play agian"
     puts "2 to quit"
     user_selection
    end
  
   def user_selection
    choice = gets.to_i
    case choice
    when 1
      menu
    when 2
      puts "Exiting thanks for playing"
      return @account
    end
   end
  
    def user_input
      puts "pick a number between 1-12"
      @pick = gets.to_i
      place_bet  
    end
  
    def place_bet
        puts
      puts "Place your bet"
      @bet = gets.to_i
      results
    end
  
    def results
        random = 1 + rand(12)
      if random == @pick
        @account = @account + @bet
        message("You win, you chose #{@pick} and number was #{random}")
        reset_data
        menu_2
      else 
        @account = @account - @bet
        message("You lose you didn't guess the answer, you chose #{@pick} but the number was #{random}")
        reset_data
          menu_2
        end
    end
  
    def reset_data
      @bet  = 0
      @pick = 0
    end
  
    def message(msg)
      puts
      puts msg
      puts "Account balance: $#{@account}"
      puts
    end
  end
  Chance = GameOfChance.new()