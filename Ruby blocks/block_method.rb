def block_method
    puts "This is first block line in block method"
    yield
    puts "Method is end !"
end

block_method do 
     puts "This is sentense called in block"
end

block_method do 
    puts "Family time for manu"
end