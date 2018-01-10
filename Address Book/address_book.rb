require './contact'
class AddressBook
    attr_reader :contacts
    def initialize
        @contacts = []
    end

    def print_contact_list
        puts "Contact list"
        contacts.each do |conatct|
            puts conatct.to_s('full_name')
        end
    end
end

address_book = AddressBook.new

manu = Contact.new
manu.first_name = "Manu"
manu.last_name ="Anku"
manu.add_phone_number("MANU", "9816324927")
manu.add_phone_number("ANKU", "9816324927")
manu.add_phone_number("AMMI", "9805087352")
manu.add_phone_number("PAPA", "9418326047")
manu.add_address("HOME", "DEhar","Bari", "Kangra", "Homachal", "1600002")

address_book.contacts.push(manu)
address_book.print_contact_list