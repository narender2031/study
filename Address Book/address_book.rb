require './contact'
require 'yaml'
class AddressBook
    attr_reader :contacts
    def initialize
        @contacts = []
        open()
    end
    def open
        if File.exist?("contacts.yml")
            @contacts = YAML.load_file("contacts.yml")
        end    
    end

    def save
        File.open("contacts.yml", "w") do |file|
            file.write(contacts.to_yaml)
        end    
    end

    def run
        loop do 
            puts "Address Book"
            puts "a: Add contact"
            puts "s: Search"
            puts "p: Print the Address book"
            puts "d: Delete the contact "
            puts "e: Exit"
            print "Enter your choice: "
            input  = gets.chomp.downcase
            case input
            when 'e'
                save()
                break
            when 'p'
                print_contact_list
            when 's'
                puts "Enter your search term"
                search = gets.chomp.downcase
                find_by_number(search)
                find_by_address(search)
                find_by_name(search)
            when 'a'
                add_contact
            when 'd'
                delete_contact
            end
        end
    end
    def print_contact_list
        puts "Contact list"
        contacts.each do |contact|
            puts contact.to_s('full_name')
        end
    end
    def delete_contact
        puts "Enter the Name of the contact for delete"
        input = gets.chomp.downcase
        search = input
        delete_this_contact(search)
    end
    def print_results(search, results)
        puts search 
        if results.length == 0
            puts "No result found"
        else
            results.each do |contact|
                puts contact.to_s('full_name')
                contact.print_phone_numbers
                contact.print_addresses
                puts "\n"
            end
        end
    end
    def delete_this_contact(name)
        results = []
        search = name.downcase
        @index 
        contacts.each do |contact|
            if contact.first_name.downcase.include?(search) || contact.last_name.downcase.include?(search)
                 results.push(contact)
                 @index = contacts.index(contact)
            end
        end
        puts results.length
        if results.length > 1
            loop do 
                puts "selct one contact for delete"
                input = gets.chomp.downcase
                search = input
                delete_this_contact(name)
            end
        else
            results.each do |del|
                contacts.delete_at(contacts.index(del))
            end
        end
        
    end
    def find_by_name(name)
        results = []
        search = name.downcase
        contacts.each do |contact|
            if contact.first_name.downcase.include?(search) || contact.last_name.downcase.include?(search)
                 results.push(contact)
            end
        end
        print_results("Name search for results (#{search})", results)
        # puts results

    end

    def add_contact
        contact = Contact.new
        print "First Name: "
        contact.first_name = gets.chomp
        print "Middle Name: "
        contact.middle_name = gets.chomp
        print "Last Name: "
        contact.last_name = gets.chomp
            loop do 
                puts "Add phone number or Address"
                puts "p: Add Phone number"
                puts "a: Add address"
                puts "Any othr key for back"
                response = gets.chomp.downcase
                case response
                when 'p'
                    phone = PhoneNumber.new
                    print "What kind of phone number (Home, work, etc)"
                    phone.kind = gets.chomp
                    print "Number: "
                    phone.number = gets.chomp
                    contact.phone_numbers.push(phone)
                when 'a'
                    address = Address.new
                    puts "What kind of address (Home, Work, ect)"
                    address.kind = gets.chomp
                    puts "Enter the street 1"
                    address.street_1 = gets.chomp
                    puts "Enter the street 2"
                    address.street_2 = gets.chomp
                    puts "Enter the state "
                    address.state = gets.chomp
                    puts "enter the city"
                    address.city = gets.chomp
                    puts "Enter the postal code"
                    address.postal_code = gets.chomp
                    contact.addresses.push(address)
                else
                    print "\n"
                    break
                end
            end
        contacts.push(contact)
    end
    
    def find_by_address(query)
        results = []
        search = query.downcase 
        contacts.each do |contact|
            contact.addresses.each do |address|
                if address.to_s('long').downcase.include?(search)
                    results.push(contact) unless results.include?(contact)
                end
            end      
        end 
        print_results("Address search for results (#{search})", results)    
    end
    def find_by_number(phone)
        results = []
        search = phone.gsub("-","")
        contacts.each do |contact|
           contact.phone_numbers.each do |phone_number|
                if phone_number.number.gsub("-","").include?(search)
                    results.push(contact) unless results.include?(contact)
                end
           end
        end
        print_results("phone search for results (#{search})", results)   
    
    end
end

address_book = AddressBook.new
address_book.run
# manu = Contact.new
# manu.first_name = "Manu"
# manu.last_name ="Anku"
# manu.add_phone_number("MANU", "9816324927")
# manu.add_phone_number("ANKU", "9816324927")
# manu.add_address("HOME", "DEhar","Bari", "Kangra", "Homachal", "1600002")
# address_book.contacts.push(manu)
# # address_book.print_contact_list
# anku = Contact.new
# anku.first_name = "Asha"
# anku.last_name ="Naresh"
# anku.add_phone_number("MANU", "8893939393")
# anku.add_phone_number("ANKU", "2345678910")
# anku.add_address("HOME", "DEhar","shimla", "Kangra", "Homachal", "1600002")
# address_book.contacts.push(anku)

# # address_book.find_by_name("a")
# # address_book.find_by_number("8")
# address_book.find_by_address("bari")