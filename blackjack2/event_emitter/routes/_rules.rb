bj_rules = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_rules
        if(BJ_State.is_playing?())
            BJ_View.command_not_recognized()
            return nil
        end
        
        BJ_View.rules_display()
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("rules") { handle_rules() }
}.()