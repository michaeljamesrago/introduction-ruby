class Card
  include Comparable
  attr_reader :rank, :suit
  RANKING = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  SUITS_RANK = ['Spades', 'Hearts', 'Clubs', 'Diamonds']

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    x = RANKING.index(rank) <=> RANKING.index(other.rank)
    return x unless x == 0
    SUITS_RANK.index(suit) <=> SUITS_RANK.index(other.suit)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end
cards = [Card.new(2, 'Hearts'),
         Card.new('Ace', 'Clubs'),
         Card.new(10, 'Diamonds')]
puts cards.sort
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')
cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8

cards = [Card.new(8, 'Hearts'),
         Card.new('Jack', 'Spades'),
         Card.new(8, 'Spades'),
         Card.new('Jack', 'Clubs'),
         Card.new(4, 'Diamonds'),
         Card.new(4, 'Clubs'),
         Card.new(4, 'Hearts')]
puts cards.sort
