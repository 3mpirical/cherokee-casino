bj_play_game = -> {
    ##### ABSTRACTED FUNCS #####
    def start_game
        if(BJ_State.is_playing?())
            puts"\n:*:*:*: You Are Already Playing :*:*:*:"
            return nil
        end
        BJ_State.play_game()
        BJ_View.make_bet_display()
        puts"bet < $$$$ >                      rules stop"
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("play game") {|event| start_game() }
    BJ_Emitter.add("play") {|event| start_game() }
    BJ_Emitter.add("p") {|event| start_game() }
    BJ_Emitter.add("-p") {|event| start_game() }
}.()