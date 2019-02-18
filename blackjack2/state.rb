class BJ_State
    @exit = false
    @playing = false
    @bet = 0;
    @dealer_cards = []
    @player_cards = []
    @dealer_aces = 0
    @player_aces = 0
    @dealer_total = 0
    @player_total = 0

    def self.exited?
        return @exit
    end
    
    def self.exit_true
        @exit = true
    end

    def self.exit_false
        @exit = false
    end



    def self.play_game
        @playing = true
    end

    def self.stop_game
        @playing = false
    end

    def self.is_playing?
        return @playing
    end



    def self.make_bet(money)
        @bet = money
    end

    def self.get_bet
        return @bet
    end

    def self.reset_bet()
        @bet = 0
    end



    def self.dealer_cards()
        return @dealer_cards
    end

    def self.player_cards()
        return @player_cards
    end

    def self.add_dealer_card(card)
        @dealer_cards.push(card)
    end

    def self.add_player_card(card)
        @player_cards.push(card)
    end

    def self.reset_cards
        @dealer_cards = []
        @player_cards = []
    end



    def self.dealer_total
        return @dealer_total
    end

    def self.player_total
        return @player_total
    end

    def self.add_dealer_total(value)
        @dealer_total += value
    end

    def self.add_player_total(value)
        @player_total += value
    end

    def self.reset_totals
        @player_total = 0
        @dealer_total = 0
    end

    

    def self.inc_dealer_aces
        @dealer_aces += 1
    end

    def self.inc_player_aces
        @player_aces += 1
    end

    def self.check_dealer_aces
        if(@dealer_aces > 0 && @dealer_total > 21)
            @dealer_total -= 10
            @dealer_aces -= 1
            return true
        end
    end

    def self.check_player_aces
        if(@player_aces > 0 && @player_total > 21)
            @player_total -= 10
            @player_aces -= 1
        end
    end

    def self.reset_aces
        @player_aces = 0
        @dealer_aces = 0
    end

end