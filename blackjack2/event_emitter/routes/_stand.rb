bj_stand = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_stand
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
            return nil
        end

        def reset_game_state
            BJ_State.reset_bet()
            BJ_State.reset_cards()
            BJ_Model.reset_deck()
            sleep(5)
            BJ_View.make_bet_display()
        end

        while(true) 
            BJ_State.add_dealer_card(BJ_Model.remove_card())
            dealer_total = BJ_State.dealer_total()
            player_total = BJ_State.player_total()

            if(dealer_total > 21)
                BJ_Model.add_player_money(BJ_State.get_bet() * 2)
                BJ_Model.inc_player_score()
                BJ_View.main_game_display()
                p "!! ...PLAYER WINS... !!"
                reset_game_state()
                break
            elsif(dealer_total > player_total)
                BJ_Model.inc_dealer_score()
                BJ_View.main_game_display()
                p "!! ...DEALER WINS... !!"
                reset_game_state()
                break
            elsif(dealer_total == player_total)
                BJ_Model.add_player_money(BJ_State.get_bet())
                BJ_View.main_game_display()
                p "!! ...PUSH (TIE)... !!"
                reset_game_state()
                break
            else
                puts "\n:*:*:*: Dealers Turn :*:*:*:\n\n"
                sleep(2)
                BJ_View.main_game_display()
            end
        end
    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("stand") { handle_stand() }
}.()