bj_play_game = -> {
    ##### ABSTRACTED FUNCS #####
    def start_game
        if(BJ_State.is_playing?())
            BJ_View.already_playing()
            return nil
        end
        BJ_State.play_game()
        BJ_View.rules_display()
        sleep(5)
        BJ_View.make_bet_display()
    end

    ##### EVENT LISTENERS #####
    BJ_Emitter.add("play game") {|event| start_game() }
    BJ_Emitter.add("play") {|event| start_game() }
    BJ_Emitter.add("p") {|event| start_game() }
    BJ_Emitter.add("-p") {|event| start_game() }
}.()