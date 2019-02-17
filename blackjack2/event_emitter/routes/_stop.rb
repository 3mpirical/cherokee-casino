bj_stop = -> {
        ##### ABSTRACTED FUNCS #####
        def handle_stop
            if(!BJ_State.is_playing?())
                puts"\n:*:*:*: You Aren't Playing Yet :*:*:*:"
                return nil

            elsif(BJ_State.is_playing?() && BJ_State.get_bet() > 0)
                BJ_State.reset_bet()
                p BJ_State.is_playing?()
                puts "Want to play again?"

                while(true)
                print("(yes/no): ")
                input = gets.strip()
                
                    if(input == "yes")
                        BJ_Emitter.emit("play")
                        break
                    elsif(input == "no")
                        BJ_State.stop_game()
                        BJ_State.reset_bet()
                        BJ_State.reset_cards()
                        BJ_Model.reset_deck()
                        puts "\nThanks For Playing!!"
                        sleep(2)
                        BJ_View.menu_display()
                        break
                    else
                        puts "Please enter yes or no"
                    end
                end
                
            elsif(BJ_State.is_playing?())
                puts "\nThanks For Playing!!"
                BJ_State.stop_game()
                sleep(2)
                BJ_View.menu_display()
            end

        end

        ##### EVENT LISTENERS #####
        BJ_Emitter.add("stop") { handle_stop() }
}.()