bj_bet = -> {
        ##### ABSTRACTED FUNCS #####
        def handle_bet
            if(!BJ_State.is_playing?())
                puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
                return nil
            end

            print "(Cash $#{BJ_Model.get_player_money()}): "
            bet = gets.strip().to_i

            if(bet <= 0)
                puts "bet must be a number greater than zero"
            elsif(bet > BJ_Model.get_player_money())
                puts "I'm sorry, but you aren't quite that rich.."
            else
                BJ_State.make_bet(bet)
                BJ_Model.sub_player_money(bet)
                BJ_View.main_game_display()
                puts"hit / stand                       rules stop"
            end
        end

        ##### EVENT LISTENERS #####
        BJ_Emitter.add("bet") { handle_bet() }
}.()