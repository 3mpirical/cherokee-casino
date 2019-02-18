# The purpose of this file is to implement basic MVC for general use.
# ^^^ sample functions are included

##### MODEL #####


class Dice_Model
    def initialize()
        ##### STATE #####
        @name = nil
    end

    ### Getters/Setters/Etc ###
    def initialize_game(name)
        @name = name
    end

    def get_name
        return @name
    end
end
mdl = Dice_Model.new



##### VIEW #####
class View
    def initialize(mdl)
        @mdl = mdl
    end

    def get_name_question
        puts "Hello there, won't you tell me your name?"
        return gets.strip
    end

    def greet
        puts "Hello There #{@mdl.get_name()}. It's good to meet you."
    end
end
view = View.new(mdl)



##### CONTROLLER #####
class Controller
    def initialize(mdl, view)
        @mdl = mdl
        @view = view
    end

    def get_name_and_greet
        name = @view.get_name_question
        @mdl.set_name(name)
        @view.greet
    end
end
ctrl = Controller.new(mdl, view)



##### EXECUTION #####
ctrl.get_name_and_greet()