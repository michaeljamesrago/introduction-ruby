class Pet
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{@type} named #{@name}"
  end
end

class Owner
  attr_reader :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.length
  end

  def to_s
    @name
  end
end

class Shelter
  def initialize
    @owners_who_have_adopted_pets = []
    @adoptable_pets = []
  end

  def print_adoptions
    owners_who_have_adopted_pets.each do |owner|
      puts "#{owner} has adopted the following pets:"
      owner.pets.each{ |pet| puts pet }
      puts "\n"
    end
  end

  def adopt(owner, pet)
    owner.pets << pet
    owners_who_have_adopted_pets << owner
    owners_who_have_adopted_pets.uniq!
    if adoptable_pets.include?(pet)
      adoptable_pets.delete(pet)
    end
  end

  def register_pet(*pets)
    pets.each do |pet|
      adoptable_pets << pet unless adoptable_pets.include?(pet)
    end
  end

  def print_adoptable_pets
    puts "The Animal Shelter has the following adoptable pets:"
    adoptable_pets.each{ |pet| puts pet }
    puts "\n"
  end

  def print_adoptable_pet_count
    puts "The Animal Shelter has #{adoptable_pets.length} adoptable pets."
    puts "\n"
  end

  private

  attr_reader :adoptable_pets, :owners_who_have_adopted_pets
end
butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.register_pet(butterscotch, pudding, darwin, kennedy, sweetie, molly, chester, asta, laddie, fluffy, kat, ben, chatterbox, bluebell)
shelter.print_adoptable_pet_count
shelter.print_adoptable_pets
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes} has #{bholmes.number_of_pets} adopted pets."
shelter.print_adoptable_pet_count
shelter.print_adoptable_pets
