class SimpleBanchmarker
    def run(&block)
        start_time = Time.now
        block.call
        end_time = Time.now
        elapsed = end_time - start_time
        puts "Elasped time: #{elapsed}"
    end
end

banchmarker = SimpleBanchmarker.new
banchmarker.run do 
    5.times do 
        sleep(rand(0.1..1.0))
    end
end