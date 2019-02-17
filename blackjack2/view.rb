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

    def self.card_display(array)
        case(array.length)
        when(1)
            puts " ____   ____\n|#{array[0].icon}   | ||||||\n| <> | ||()||\n|___#{array[0].icon}| ||||||"
        when(2)
            puts " ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   |\n| <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}|"
        when(3)
            puts " ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   |\n| <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}|"
        when(4)
            puts " ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   |\n| <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}|"
        when(5)
            puts " ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   |\n| <> | | <> | | <> | | <> | | <> | \n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}|"
        when(6)
            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
        when(7)

            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
            puts " ____ \n|#{array[6].icon}   |\n| <> |\n|___#{array[6].icon}|"
        when(8)
            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
            puts " ____   ____ \n|#{array[6].icon}   | |#{array[7].icon}   |\n| <> | | <> |\n|___#{array[6].icon}| |___#{array[7].icon}|"
        when(9)
            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
            puts " ____   ____   ____ \n|#{array[6].icon}   | |#{array[7].icon}   | |#{array[8].icon}   |\n| <> | | <> | | <> |\n|___#{array[6].icon}| |___#{array[7].icon}| |___#{array[8].icon}|"
        when(10)
            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
            puts " ____   ____   ____   ____\n|#{array[6].icon}   | |#{array[7].icon}   | |#{array[8].icon}   | |#{array[9].icon}   |\n| <> | | <> | | <> | | <> |\n|___#{array[6].icon}| |___#{array[7].icon}| |___#{array[8].icon}| |___#{array[9].icon}|"
        when(11)
            puts " ____   ____   ____   ____   ____   ____\n|#{array[0].icon}   | |#{array[1].icon}   | |#{array[2].icon}   | |#{array[3].icon}   | |#{array[4].icon}   | |#{array[5].icon}   |\n| <> | | <> | | <> | | <> | | <> | | <> |\n|___#{array[0].icon}| |___#{array[1].icon}| |___#{array[2].icon}| |___#{array[3].icon}| |___#{array[4].icon}| |___#{array[5].icon}|"
            puts " ____   ____   ____   ____   ____\n|#{array[6].icon}   | |#{array[7].icon}   | |#{array[8].icon}   | |#{array[9].icon}   | |#{array[10].icon}   |\n| <> | | <> | | <> | | <> | | <> | \n|___#{array[6].icon}| |___#{array[7].icon}| |___#{array[8].icon}| |___#{array[9].icon}| |___#{array[10].icon}|"
        end
    end

    def self.main_game_display
        puts "============================================"
        puts "Dealer         Total: #{BJ_State.dealer_total()}"
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        BJ_View.card_display(BJ_State.dealer_cards())
        puts ""
        puts "                 $$$ #{BJ_State.get_bet()} $$$"
        puts ""
        BJ_View.card_display(BJ_State.player_cards())
        puts ""
        puts ":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:*:"
        puts "User           Total: #{BJ_State.player_total()}               $#{BJ_Model.get_player_money()}"
        puts "============================================"
        puts "hit / stand                       rules stop"
    end

    def self.make_bet_display
        puts "============================================"
        puts "Dealer         score: #{BJ_Model.dealer_score()}"
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
        puts "User           score: #{BJ_Model.player_score()}               $#{BJ_Model.get_player_money()}"
        puts "============================================"
        puts "bet                               rules stop"
    end

    def self.get_emit_input()
        puts(" _-_-_-_-_-_-")
        print("_-_BlackJack: ")
        BJ_Emitter.emit(gets.strip())
    end
end