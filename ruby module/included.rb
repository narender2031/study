module Fatcher
    def self.included(klass)
        puts "#{klass} has been included"    
        attr_accessor :fetch_count    
    end
    def fatch(item)
        @fatch_count ||= 0
        @fatch_count += 1
        puts "[#{@name}, Fatch count: #{@fatch_count}] I'll bring that #{item} right back"
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