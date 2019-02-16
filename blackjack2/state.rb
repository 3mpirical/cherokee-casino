class BJ_State
    @exit = false
    @playing = false
    @bet = 0;
    @dealer_cards = []
    @player_cards = []

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

    def self.dealer_score()
        score = 0
        @dealer_cards.each {|item|
            score += item.value
        }
        return score
    end

    def self.player_score()
        score = 0
        @player_cards.each {|item|
            score += item.value
        }
        return score
    end

end