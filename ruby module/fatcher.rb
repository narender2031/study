module Fatcher
    def fatch(item)
        puts "I'll bring that #{item} right back"
    end
end    
class Dog
    include Fatcher
    def initialize(name)
        @name = name
    end
end

class Cat
    include Fatcher
    def initialize(name)
        @name = name
    end
end



dog = Dog.new("Fido")
dog.fatch("Ball")
cat = Cat.new("Palvi")
cat.fatch("Laser")