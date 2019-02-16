;##### BASIC EVENT EMITTER #####
# .add() --> takes a string and a block argument, 
#        where the block argument is passed the event
#  ex) instance.add("string") {|event| ... code to run ...}
#
# .add_default() --> takes a block argument only, with
#                    the event object also passed into down.
# ex) instance.add_default() {|event| ... code to run ...}
#
# .emit --> takes a string value, and checks if a block exists 
#           in our @listener_hash. If it does exist, it calls the
#           block and returns true. If the block corresponding to
#           the event doesn't exist, it checks for a default block
#           and calls that if it exists then returns false.
#
# *****   You can use a singleton class instance 
# *****   to require and contain all of your routes

module Event
    class Event
        attr_accessor(:name)
        def initialize(string)
            @name = string
        end
    end
end

class BJ_Emitter
    include Event

    @listener_hash = {}
    @default_block = []

    def self.add(string, &block)
        if(string.kind_of?(String))
            if(@listener_hash[string.to_sym].kind_of?(Array))
                @listener_hash[string.to_sym].push(block)
            else
                @listener_hash[string.to_sym] = [block]
            end
        else
            raise("ERROR: Emitter.add was passed #{string.inspect}, not a string")
        end
    end

    def self.add_default(&block)
        @default_block.push(block)
    end

    def self.emit(string)
        if(string.kind_of?(String))
            event = Event.new(string)
            if(@listener_hash[string.to_sym])
                @listener_hash[string.to_sym].each {|item|
                    item.call(event)
                }
                return true
            else
                @default_block.each {|item| item.call(event) } if(@default_block.length > 0)
                return false
            end
        else
            raise("ERROR: Emitter.emit was passed #{string.inspect}, not a string")
        end
    end

    def self.init_routes(route_string)
        require(route_string)
    end

    def self.new
        raise("ERROR: cannot instantiate Emitter singleton")
    end
end
