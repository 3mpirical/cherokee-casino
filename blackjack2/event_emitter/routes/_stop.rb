bj_stop = -> {
        ##### ABSTRACTED FUNCS #####
        def handle_stop
            if(!BJ_State.is_playing?())
                BJ_View.not_playing_yet()
                return nil

            elsif(BJ_State.is_playing?() && BJ_State.get_bet() > 0)
                # game is stopped here because the the 'play' route won't
                # fire if the game is still running
                BJ_State.reset_bet()
                BJ_State.reset_cards()
                BJ_State.reset_totals()
                BJ_Model.reset_deck()
                puts "Want to play again?"

                while(true)
                print("(yes/no): ")
                input = gets.strip()
                
                    if(input == "yes")
                        BJ_Emitter.emit("bet")
                        break
                    elsif(input == "no")
                        BJ_State.stop_game()
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