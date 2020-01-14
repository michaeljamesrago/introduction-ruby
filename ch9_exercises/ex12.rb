=begin
Chapter 9 exercise12
Given the following data structures. Write a program that copies the information
from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
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

p contacts

  
    
    
