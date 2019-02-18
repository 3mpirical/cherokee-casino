require("./blackjack2/controller")
require("./blackjack2/model")
require("./blackjack2/view")
require("./blackjack2/state")
require("./blackjack2/event_emitter/game_emitter")
require("./blackjack2/event_emmitter/utility")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_exit")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_menu")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_play")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_stop")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_bet")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_hit")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_stand")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_rules")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_history")
BJ_Emitter.init_routes("./blackjack2/event_emitter/routes/_default")

require "pry"
require "colorize"

class Model  
    attr_accessor(:wallet, :exits) #you can call wallet to later add or subtract values
    attr_reader(:current_game)

    def initialize()
        @current_game = nil
        @exits = false
        init_wallet()
    end

    def init_wallet()
        @wallet = Random.new().rand(600..1000)
    end

    def mutate_wallet(money)
        @wallet += money
    end

    def set_game(picked_game)
        @current_game = picked_game #whatever game chosen 
    end
end
Mdl = Model.new



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
        puts "_" * 50
        puts
        puts " " * 9 + "♤ Welcome To The Cherokee Casino ♧"
        puts "_" * 50
        puts
        puts
        puts " " * 13.5 + "🂱 Games - Type \"Games\" \n\n"
        puts " " * 10.5 + "⏣ Settings - Type \"Settings\" \n\n"
        puts " " * 18.5 + "Wallet: $#{@mdl.wallet} \n\n"
        puts
        puts "_" * 50
    end

    def display_games
        puts "_" * 50
        puts
        puts " " * 12 + "🂱 Welcome To Games Menu 🃎"
        puts "_" * 50
        puts
        puts
        puts " " * 14.5 + "Chance - Type \"Chance\" \n\n"
        puts " " * 11.5 + "Blackjack - Type \"Blackjack\" \n\n"
        puts " " * 9 + "Return to the Menu - Type \"Menu\" \n\n"
        puts " " * 18.5 + "Wallet: $#{@mdl.wallet} \n\n"
        puts "_" * 50
    end

    def display_settings
        puts "_" * 50
        puts
        puts " " * 12 + "⏣ Welcome To Settings Menu ⏣"
        puts "_" * 50
        puts
        puts
        puts " " * 7 + "$ Change Starting Bank - Type \"Bank\" \n\n"
        puts " " * 7 + "⎃ Change Display Mode - Type \"Color\" \n\n"
        puts " " * 7.5 + "♤ Return to the Menu - Type \"Menu\" \n\n"
        puts "_" * 50
    end
end
view = View.new(Mdl)



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
            input.downcase!

            case(input)
            when("games")
                @view.display_games()
                print "Select Game: "
                input = gets.strip()
                input.downcase!
                if input == "chance"
                    @mdl.set_game("chance")
                    puts "Starting: #{@mdl.current_game}"
                elsif input == "blackjack"
                    @mdl.set_game("blackjack")
                    puts "Starting: #{@mdl.current_game}"
                    Blackjack_Controller.init()
                elsif input == "menu"
                    @view.menu()
                else
                    puts "Invalid Selection"
                end
            when("settings")
                @view.display_settings()
                print "Selection: "
                input = gets.strip()
                input.downcase!
            when("exit")
                @mdl.exits = true
            else
                puts("Command Not Recognized")
            end
        end
    end
end
ctrl = Controller.new(Mdl, view)

### Execute ###

ctrl.initialize_game()