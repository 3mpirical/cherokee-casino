bj_hit = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_hit
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
            return nil
        end

        BJ_State.add_player_card(BJ_Model.remove_card())
        player_score = BJ_State.player_total()

        if(player_score > 21)
            BJ_Model.inc_dealer_score()
            BJ_View.main_game_display()
            p "!! ...DEALER WINS... !!"
            BJ_State.reset_bet()
            BJ_State.reset_cards()
            BJ_Model.reset_deck()
            sleep(3)
            BJ_View.make_bet_display()
        else
            BJ_View.main_game_display()
        end

    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("hit") { handle_hit() }
}.()