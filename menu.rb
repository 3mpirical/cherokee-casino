require("./blackjack2/controller")
require("./blackjack2/model")
require("./blackjack2/view")
require("./blackjack2/state")
require("./blackjack2/event_emitter/game_emitter")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_exit")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_menu")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_play")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_stop")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_bet")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_hit")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_stand")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_rules")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_default")

require "pry"

class Model  
    attr_accessor(:wallet, :exits) #you can call wallet to later add or subtract values
    attr_reader(:current_game)

    def initialize()
        @current_game = nil
        @exits = false
        init_wallet()
    end

    def init_wallet()
        @wallet = Random.new().rand(60..100)
    end

    def mutate_wallet(money)
        @wallet += money
    end

    def set_game(picked_game)
        @current_game = picked_game #whatever game chosen 
    end
end

mdl = Model.new

class View

    def initialize(mdl)
        @mdl = mdl
    end

    def display_initial_prompt
        p @mdl.wallet
        @mdl.wallet = gets.strip.to_i
        p @mdl.wallet
    end

    def menu
        puts "Welcome To The Cherokee Casino"
        puts "1. Games Menu"
        puts "2. Settings"
        puts "Wallet: $#{@mdl.wallet}"
    end

    def display_games
        puts "Welcome to The Games Menu"
        puts "Please Select a Game" 
    end

end

view = View.new(mdl)

class Controller
    def initialize(mdl, view)
        @mdl = mdl
        @view = view
    end


    def initialize_game
        @view.menu()

        while(@mdl.exits == false)
            print "Selection: "
            input = gets.strip()

            case(input)
            when("games")
                @view.display_games()
                print "Select game: "
                input = gets.strip()
                if input == "Chance".downcase
                    @mdl.set_game("chance")
                    puts "Starting: #{@mdl.current_game}"
                elsif input == "BlackJack".downcase
                    @mdl.set_game("blackjack")
                    puts "Starting: #{@mdl.current_game}"
                    Blackjack_Controller.init()
                else
                    puts "Invalid Selection"
                end
            when("exit")
                @mdl.exits = true
            else
                puts("Command Not Recognized")
            end
        end
    end




end
ctrl = Controller.new(mdl, view)

### Execute ###

ctrl.initialize_game()