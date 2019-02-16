require("./model")
require("./view")
require("./state")
require("./event_emitter/game_emitter")

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


####### EXECUTION #######
BJ_Emitter.init_routes("./event_emitter/routes/_exit")
BJ_Emitter.init_routes("./event_emitter/routes/_menu")
BJ_Emitter.init_routes("./event_emitter/routes/_play")
BJ_Emitter.init_routes("./event_emitter/routes/_stop")
BJ_Emitter.init_routes("./event_emitter/routes/_bet")
BJ_Emitter.init_routes("./event_emitter/routes/_hit")
BJ_Emitter.init_routes("./event_emitter/routes/_stand")
BJ_Emitter.init_routes("./event_emitter/routes/_rules")
BJ_Emitter.init_routes("./event_emitter/routes/_default")

Blackjack_Controller.init()


