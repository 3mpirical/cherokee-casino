##### VIEW #####
class BJ_View

    def self.menu_display
        puts "============================================"
        puts "       ╔╗ ┬  ┌─┐┌─┐┬┌─   ╦┌─┐┌─┐┬┌─\n       ╠╩╗│  ├─┤│  ├┴┐   ║├─┤│  ├┴┐\n       ╚═╝┴─┘┴ ┴└─┘┴ ┴  ╚╝┴ ┴└─┘┴ ┴"
        puts "============================================"
        puts "menu/help ---> print this menu for reference"
        puts "h, -h"
        puts ""
        puts "play game ---------> start playing blackjack"
        puts "play, p, -p"
        puts ""
        puts "rules -------------------> learn how to play"
        puts "r, -r"
        puts ""
        puts "history -------> see how good you really are"
        puts "h, -h"
        puts ""
        puts "quit/exit -----------> return to main screen"
        puts " q,-q"
        puts "============================================"
    end

    def self.one_card_down(c1)
        puts " ____   ____\n|#{c1}   | ||||||\n| <> | ||()||\n|___#{c1}| ||||||"
    end

    def self.two_cards_up(c1, c2)
        puts " ____   ____\n|#{c1}   | |#{c2}   |\n| <> | | <> |\n|___#{c1}| |___#{c2}|"
    end

    def self.main_game_display
        puts "============================================"
        puts "Dealer         score: #{BJ_State.dealer_score()}"
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        BJ_View.one_card_down("Q")
        puts ""
        puts "                 $$$ #{BJ_State.get_bet()} $$$"
        puts ""
        BJ_View.two_cards_up("2","K")
        puts ""
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        puts "User           score: #{BJ_State.player_score()}               $#{BJ_Model.get_player_money()}"
        puts "============================================"
        puts "hit / stand                       rules stop"
    end

    def self.make_bet_display
        puts "============================================"
        puts "Dealer         score: #{BJ_State.dealer_score()}"
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        puts ""
        puts "      $$$$$   $                          $  "
        puts "   $  $$___$  $   $$$    $$$$   $$$$        "
        puts "      $$      $  $   $  $      $_____$      "
        puts " $    $$      $   $$$ $  $$$$   $____       "
        puts ""
        puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
        puts ""
        puts "    $    $$$$$                $       $     "
        puts " $       $$___$     $$$$    $$$$$           "
        puts "         $$$$$     $_____$    $         $   "
        puts "      $  $$___$     $____     $    $        "
        puts ""
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        puts "User           score: #{BJ_State.player_score()}               $#{BJ_Model.get_player_money()}"
        puts "============================================"
        puts "bet                               rules stop"
    end

    def self.get_emit_input()
        puts(" _-_-_-_-_-_-")
        print("_-_BlackJack: ")
        BJ_Emitter.emit(gets.strip())
    end
end