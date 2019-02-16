bj_rules = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_rules
        
        p "here in rules"
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("rules") { handle_rules() }
}.()