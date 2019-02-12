def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    block.call(name, age)
    name
end

my_name = get_name("Enter your name") do |name, age|
    print "This the cool name,  #{name}!"
    print "My age is #{age}"
end

puts "My name: #{my_name}"

