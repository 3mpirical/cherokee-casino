bj_hit = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_hit
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            BJ_View.not_quite_there()
            return nil
        end
        BJ_Model.shuffle_prn()
        Util.give_player_card()
        player_score = BJ_State.player_total()

        if(player_score > 21)
            BJ_Model.inc_dealer_score()
            BJ_Model.add_to_history("Dealer")
            BJ_Model.remove_card() if (BJ_State.dealer_cards().length == 1)
            BJ_View.main_game_display()
            BJ_View.dealer_wins()
            Util.reset_game_state()
        else
            BJ_View.main_game_display()
        end

    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("hit") { handle_hit() }
}.()