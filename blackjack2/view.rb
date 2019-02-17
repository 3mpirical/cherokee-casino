##### VIEW #####
class BJ_View

    def self.staggered_display(array, delay)
        array.each() {|item|
            puts item
            sleep(delay)
        }
    end

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
        puts "Dealer         Total: #{BJ_State.dealer_total()}            Cards:#{BJ_State.dealer_cards().length == 1? BJ_Model.deck_length() - 1 : BJ_Model.deck_length()}"
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
        puts "Commands: hit / stand                   stop"
    end

    def self.make_bet_display
        puts "============================================"
        puts "Dealer         score: #{BJ_Model.dealer_score()}            Cards:#{BJ_State.dealer_cards().length == 1? BJ_Model.deck_length() - 1 : BJ_Model.deck_length()}"
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
        puts "Commands: bet                           stop"
    end

    def self.rules_display
        staggered_display([
            "\n============================================",
            "                 GAME RULES",
            "============================================",
            " FIRST: make a 'bet' to start game",
            "",
            " SECOND: decide whether to:",
            "         'hit' => get another card",
            "         'stand' => let dealer draw",
            "",
            " THIRD: 'stand' when you think your card",
            "         total is high enough",
            "",
            " FOURTH: wait for the dealer to draw its",
            "         cards, and determine the winner",
            "",
            " * If your cards total more than 21, then",
            "   you lose the game",
            "",
            " * If your score goes above 21, but you have",
            "   ace in play, that ace will count for 1",
            "   instead of 11",
            "",
            " CARD VALUES: ",
            "",
            "   Number Cards: their number value",
            "",
            "   Face Cards: 10",
            "",
            "   Aces: 11 or 1",
            "============================================"
        ], 0.1)
    end

    def self.history_display
        staggered_display([
            "\n============================================",
            "                 GAME HISTORY",
            "============================================",
        ], 0.1)
        BJ_Model.get_history().each_with_index() {|item, index|
            staggered_display([
            "#{index + 1}) Winner: #{item[:winner]}",
            "-----Player-----",
            "     Cards Total : #{item[:p_total]}",
            "     Player Score: #{item[:p_score]}",
            "-----Dealer------",
            "     Cards Total : #{item[:d_total]}",
            "     Dealer Score: #{item[:d_score]}",
            ""
                ], 0.1)   
        }
        puts "============================================"
    end


    def self.get_emit_input()
        puts(" _-_-_-_-_-_-")
        print("_-_BlackJack: ")
        BJ_Emitter.emit(gets.strip())
    end
end