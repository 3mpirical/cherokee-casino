##### CONTROLLER #####
class Blackjack_Controller
    def self.init()
        BJ_View.menu_display()
        while(!BJ_State.exited?())
            BJ_View.get_emit_input()
        end
    end

    def new
        raise("ERROR: cannot instantiate Blackjack_Controller singleton")
    end
end

