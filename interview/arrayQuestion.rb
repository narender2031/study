class ArrayQuestion
    def login
        puts "Hii enter the size of array"
        @size = gets.chomp.to_i
        array = Array.new
        (0...@size).each do |indx|
            data = gets.chomp
            array.push << data
        end
        puts "Your array is "
        puts array
        @arrayLength = array.length
        (0...@arrayLength).each do |i|
            @min_index = i
           (i+1...@arrayLength).each do |j|
                if array[j] < array[i]
                   @min_index = j
                end
            end  
            @smallerNumber = array[@min_index];   
            array[@min_index] = array[i];  
            array[i] = @smallerNumber;    
        end
        puts "Your sorted array"
        puts array 
    end    
end

a = ArrayQuestion.new
puts a.login