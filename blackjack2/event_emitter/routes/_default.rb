bj_default = -> {
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    BJ_Emitter.add_default() {|event| BJ_View.command_not_recognized() }

}.()