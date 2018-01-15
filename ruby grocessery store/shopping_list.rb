def create
    print "What is tha list name ?"
    name = gets.chomp

    hash = {"name" => name, "items"=> Array.new}
    return hash
end

def add_list_item
  print "What is the item called? "
  item_name = gets.chomp

  print "How much? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end
def output_seprater(charcter = "-")
print charcter*80
end
def print_list(list)
    puts "list: #{list['name']}"
    output_seprater()
    list['items'].each do |item|
        puts "\t Item:" +  item['name'] + "\t\t\t" +
           "Quantity:" + item['quantity'].to_s
        output_seprater()
    end
end

list =  create()

# puts  add_list_item().inspect
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 list['items'].push(add_list_item())
 
 puts list
 print_list(list)
