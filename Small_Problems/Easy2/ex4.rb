
age = 0
desired_retirement_age = 0

def get_number(question)
  num = 0
  loop do
    print question + ' '
    num = gets.chomp.to_i
    if num.to_s.to_i > 0
      break
    else
      puts 'That is not a valid entry.'
    end
  end
  num
end

age = get_number('What is your age?')

desired_retirement_age = get_number('At what age do you want to retire?')

current_year = Time.new.year
years_to_go = desired_retirement_age - age

puts "It's #{current_year}. You will retire in #{current_year + years_to_go}"
puts "You have #{years_to_go} years to go."
