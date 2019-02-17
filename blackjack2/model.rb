module Cards
    class Card
        attr_accessor(:icon, :value)
        def initialize(icon, value)
            @icon = icon
            @value = value
        end
    end
end

##### MODEL #####
class BJ_Model
    include Cards
    ##### STATE #####
    @player_money = 100
    @player_score = 0
    @dealer_score = 0
    @history_arr = []
    @deck_arr = []
    @card_types = [
        Card.new("2", 2),
        Card.new("3", 3),
        Card.new("4", 4),
        Card.new("5", 5),
        Card.new("6", 6),
        Card.new("7", 7),
        Card.new("8", 8),
        Card.new("9", 9),
        Card.new("⑽", 10),
        Card.new("K", 10),
        Card.new("Q", 10),
        Card.new("J", 10),
        Card.new("A", 11),
    ]

    ### Getters/Setters/Etc ###

    def self.reset_deck
        @deck_arr = []
        @card_types.each() {|item|
            @deck_arr.push(item, item, item, item)
        }
        @deck_arr.shuffle!()
    end
    
    def self.remove_card
        return @deck_arr.pop()
    end

    def self.deck_length
        return @deck_arr.length        
    end
    


    def self.get_player_money
        return @player_money
    end

    def self.sub_player_money(val)
        @player_money -= val
    end

    def self.add_player_money(val)
        @player_money += val
    end

    

    def self.player_score
        return @player_score
    end

    def self.dealer_score
        return @dealer_score
    end

    def self.inc_player_score
        @player_score += 1
    end

    def self.inc_dealer_score
        @dealer_score += 1
    end

end

BJ_Model.reset_deck()