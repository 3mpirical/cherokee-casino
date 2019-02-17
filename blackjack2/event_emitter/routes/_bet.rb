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

        def reset_game_state
            BJ_State.reset_bet()
            BJ_State.reset_cards()
            BJ_State.reset_aces()
            BJ_State.reset_totals()
            sleep(5)
            BJ_View.make_bet_display()
        end

        def handle_bet
            if(!BJ_State.is_playing?() || BJ_State.get_bet() != 0)
                BJ_View.not_quite_there()
                return nil
            end

            BJ_View.bet_prompt()            
            bet = gets.strip().to_i

            if(bet <= 0)
                puts "bet must be a number greater than zero"
            elsif(bet > BJ_Model.get_player_money())
                puts "I'm sorry, but you aren't quite that rich.."
            else
                BJ_Model.shuffle_prn()
                BJ_State.make_bet(bet)
                BJ_Model.sub_player_money(bet)

                give_dealer_card()
                give_player_card()
                give_player_card()
                dealer_total = BJ_State.dealer_total()
                player_total = BJ_State.player_total()

                if(player_total == 21)
                    BJ_View.main_game_display()

                    BJ_View.blackjack()
                    sleep(2)
                    BJ_View.dealers_turn()
                    sleep(2)

                    give_dealer_card()
                    BJ_View.main_game_display()

                    if(dealer_total == 21)
                        BJ_Model.add_player_money(BJ_State.get_bet())
                        BJ_Model.add_to_history("Tie")
                        BJ_View.push_tie()
                        reset_game_state()
                    else
                        BJ_Model.add_player_money(BJ_State.get_bet() * 2)
                        BJ_Model.inc_player_score()
                        BJ_Model.add_to_history("Player")
                        BJ_View.player_wins()
                        reset_game_state()
                    end
                else
                    BJ_View.main_game_display()
                end
            end
        end

        ##### EVENT LISTENERS #####
        BJ_Emitter.add("bet") { handle_bet() }
}.()