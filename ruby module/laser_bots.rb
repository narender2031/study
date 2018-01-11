module LaserBots
    module Console
        class Command
        end
    end

    module World
        class Player
            attr_reader :name
            
            def initialize(name)
                @name = name
            end
            def robot
                attr_reader :name
                def initialize(name)
                    @name = name
                end

                def target_player(name)
                    Player.new(name)
                end
            end
        end
    end    
end

Player = LaserBots::World::Player.new("manu")
puts Player.name