
class Util
    def self.give_player_card
        card = BJ_Model.remove_card()
        BJ_State.add_player_card(card)
        BJ_State.add_player_total(card.value)
        BJ_State.inc_player_aces() if(card.icon == "A")
        BJ_State.check_player_aces()
    end

    def self.give_dealer_card
        card = BJ_Model.remove_card()
        BJ_State.add_dealer_card(card)
        BJ_State.add_dealer_total(card.value)
        BJ_State.inc_dealer_aces() if(card.icon == "A")
        BJ_State.check_dealer_aces()
    end

    def self.restart_game
        BJ_State.reset_bet()
        BJ_State.reset_cards()
        BJ_State.reset_aces()
        BJ_State.reset_totals()
        sleep(5)
        BJ_Emitter.emit("bet")
    end
    
end