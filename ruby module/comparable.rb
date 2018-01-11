class Player
    include Comparable

    attr_accessor :name, :score
    def <=>(other_player)
        score <=> other_player.score
    end
    def initialize(name, score)
        @name = name
        @score = score
    end
end

player1 = Player.new("manu", 200)
player2 = Player.new("anku", 300)

puts "player1 > player2: %s" % (player1 > player2)
puts "player1 < player2: %s" % (player1 < player2)
