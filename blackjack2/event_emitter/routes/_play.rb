bj_play_game = -> {
    ##### ABSTRACTED FUNCS #####
    def start_game
        if(BJ_State.is_playing?())
            BJ_View.already_playing()
            return nil
        end
        BJ_State.play_game()
        BJ_View.rules_display()
        while(true)
            print("Ready? (yes/no): ")
            input = gets.strip()
        
            if(input == "yes")
                BJ_Emitter.emit("bet")
                break
            elsif(input == "no")
                BJ_State.stop_game()
                puts "\nAlright, I'll return you to the main screen"
                sleep(2)
                BJ_View.menu_display()
                break
            else
                puts "Please enter yes or no"
            end
        end 
        # sleep(2)
        # BJ_Emitter.emit("bet")
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("play game") {|event| start_game() }
    BJ_Emitter.add("play") {|event| start_game() }
    BJ_Emitter.add("p") {|event| start_game() }
    BJ_Emitter.add("-p") {|event| start_game() }
}.()