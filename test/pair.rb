a= [1, 5, 7, -1, 5]
@sum = 6
@count = 0
length = a.length
(0...length).each do |index| 
    (index+1...length).each do |ind|
        if a[index] +  a[ind] == @sum 
            @count = @count + 1
        end   
    end

end 
puts @count