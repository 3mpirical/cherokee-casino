bj_stand = -> {
    ##### ABSTRACTED FUNCS #####
    def reset_game_state
        BJ_State.reset_bet()
        BJ_State.reset_cards()
        BJ_State.reset_aces()
        BJ_State.reset_totals()
        sleep(5)
        BJ_View.make_bet_display()
    end

    def give_dealer_card
        card = BJ_Model.remove_card()
        BJ_State.add_dealer_card(card)
        BJ_State.add_dealer_total(card.value)
        BJ_State.inc_dealer_aces() if(card.icon == "A")
        BJ_State.check_dealer_aces()
    end

    def handle_stand
        if(!BJ_State.is_playing?() || BJ_State.get_bet() == 0)
            puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
            return nil
        end

        while(true) 
            BJ_Model.shuffle_prn()
            puts "\n:*:*:*: Dealers Turn :*:*:*:\n\n"
            give_dealer_card()
            sleep(2)
            BJ_View.main_game_display()
            dealer_total = BJ_State.dealer_total()
            player_total = BJ_State.player_total()

            if(dealer_total > 21)
                BJ_Model.add_player_money(BJ_State.get_bet() * 2)
                BJ_Model.inc_player_score()
                BJ_Model.add_to_history("Player")
                puts "\n!! ...PLAYER WINS... !!\n\n"
                reset_game_state()
                break
            elsif(dealer_total > player_total)
                BJ_Model.inc_dealer_score()
                BJ_Model.add_to_history("Dealer")
                puts "\n!! ...DEALER WINS... !!\n\n"
                reset_game_state()
                break
            elsif(dealer_total == player_total)
                BJ_Model.add_player_money(BJ_State.get_bet())
                BJ_Model.add_to_history("Tie")
                puts "\n!! ...PUSH (TIE)... !!\n\n"
                reset_game_state()
                break
            end
        end
    end


    ##### EVENT LISTENERS #####
    BJ_Emitter.add("stand") { handle_stand() }
}.()