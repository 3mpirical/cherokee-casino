bj_stand = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_stand
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            BJ_View.not_quite_there()
            return nil
        end

        BJ_View.dealers_turn()

        while(true) 
            BJ_Model.shuffle_prn()
            Util.give_dealer_card()
            dealer_total = BJ_State.dealer_total()
            player_total = BJ_State.player_total()

            sleep(3)
            BJ_View.dealer_turn_display()

            if(dealer_total > 21)
                BJ_Model.add_player_money(BJ_State.get_bet() * 2)
                BJ_Model.inc_player_score()
                BJ_Model.add_to_history("Player")
                BJ_View.player_wins()
                Util.restart_game()
                break
            elsif(dealer_total > player_total)
                BJ_Model.inc_dealer_score()
                BJ_Model.add_to_history("Dealer")
                BJ_View.dealer_wins()
                Util.restart_game()
                break
            elsif(dealer_total == player_total)
                BJ_Model.add_player_money(BJ_State.get_bet())
                BJ_Model.add_to_history("Tie")
                BJ_View.push_tie()
                Util.restart_game()
                break
            end
        end
    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("stand") { handle_stand() }
}.()