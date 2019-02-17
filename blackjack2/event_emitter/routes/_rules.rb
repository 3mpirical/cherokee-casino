bj_rules = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_rules
        if(BJ_State.is_playing?())
            puts "\n... Command Not Recognized ..."
            return nil
        end
        
        BJ_View.rules_display()
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("rules") { handle_rules() }
}.()