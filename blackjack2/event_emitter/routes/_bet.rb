bj_bet = -> {
        ##### ABSTRACTED FUNCS #####
        def give_player_card
            card = BJ_Model.remove_card()
            BJ_State.add_player_card(card)
            BJ_State.add_player_total(card.value)
            BJ_State.inc_player_aces() if(card.icon == "A")
            BJ_State.check_player_aces()
        end

        def give_dealer_card
            card = BJ_Model.remove_card()
            BJ_State.add_dealer_card(card)
            BJ_State.add_dealer_total(card.value)
            BJ_State.inc_dealer_aces() if(card.icon == "A")
            BJ_State.check_dealer_aces()
        end

        def handle_bet
            if(!BJ_State.is_playing?() || BJ_State.get_bet() != 0)
                puts"\n:*:*:*: You Aren't Quite There Yet :*:*:*:"
                return nil
            end

            print " (Cash $#{BJ_Model.get_player_money()}): "
            bet = gets.strip().to_i

            if(bet <= 0)
                puts "bet must be a number greater than zero"
            elsif(bet > BJ_Model.get_player_money())
                puts "I'm sorry, but you aren't quite that rich.."
            else
                BJ_State.make_bet(bet)
                BJ_Model.sub_player_money(bet)

                give_dealer_card()
                give_player_card()
                give_player_card()


                BJ_View.main_game_display()
            end
        end

        ##### EVENT LISTENERS #####
        BJ_Emitter.add("bet") { handle_bet() }
}.()