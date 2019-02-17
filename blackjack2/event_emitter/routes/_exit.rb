bj_exit = -> {
    ##### ABSTRACTED FUNCS #####
    def exit_application
        if(BJ_State.is_playing?())
            BJ_View.stop_game_first()
            return nil
        end
        
        puts "\nAre you sure you want exit BlackJack,"
        puts "   and return to the main menu?"
        while(true)
            print "\n(yes/no): "
            input = gets.strip()
            if(input == "yes")
                puts "\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*"
                puts "      Thanks for playing with us"
                puts "      You are always welcome back..."
                puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*\n\n"
                BJ_State.exit_true()
                break
            elsif(input == "no")
                puts "\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*"
                puts "      Yeah, that's what I thought"
                puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*"
                break
            else
                puts "\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*"
                puts "        Please enter yes or no"
                puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*"
            end
        end
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("quit") {|event|  exit_application() }
    BJ_Emitter.add("q") {|event|  exit_application() }
    BJ_Emitter.add("exit") {|event|  exit_application() }
}.()