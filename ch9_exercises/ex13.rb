=begin
Chapter 9 exercise 13
Using the hash you created from the previous exercise, demonstrate how you would
access Joe's email and Sally's phone number?
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


def enter_contact_info(arr)
  h = {
    email_address: arr[0],
    street_address: arr[1],
    phone_number: arr[2]
  }
end

contacts["Joe Smith"] = enter_contact_info(contact_data[0])
contacts["Sally Johnson"] =  enter_contact_info(contact_data[1])

puts "Joe's email: #{contacts["Joe Smith"][:email_address]}"
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone_number]}"

  
    
    
