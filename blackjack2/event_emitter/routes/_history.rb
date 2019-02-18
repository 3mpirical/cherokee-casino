bj_history = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_history
        if(BJ_State.is_playing?())
            BJ_View.stop_game_first()
            return nil
        elsif(BJ_Model.get_history().length == 0)
            puts "\n:*:*:*::*:*:* You Haven't Played Yet :*:*:*:*:*:*:"
            return nil
        end
        BJ_View.history_display()
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("history") { handle_history() }
    BJ_Emitter.add("his") { handle_history() }
    BJ_Emitter.add("-his") { handle_history() }
}.()