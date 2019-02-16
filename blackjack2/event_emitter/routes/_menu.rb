bj_menu = -> {
    ##### ABSTRACTED FUNCS #####
    def menu_handler
        if(BJ_State.is_playing?())
            puts"\n:*:*:*: Stop Game First :*:*:*:"
            return nil
        end
        BJ_View.menu_display()
    end
    ##### EVENT LISTENERS #####
    BJ_Emitter.add("menu") {|event| menu_handler() }
    BJ_Emitter.add("help") {|event| menu_handler() }
    BJ_Emitter.add("h") {|event| menu_handler() }
    BJ_Emitter.add("-h") {|event| menu_handler() }
}.()