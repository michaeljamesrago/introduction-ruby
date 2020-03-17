class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @deck.empty?
    @deck.pop
  end

  private

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @deck.shuffle!
  end
end

class PokerHand
  include Comparable

  HAND_RANKS = ['High card', 'Pair', 'Two pair', 'Three of a kind', 'Straight', 'Flush', 'Full house', 'Four of a kind', 'Straight flush', 'Royal flush'].freeze

  def initialize(deck)
    @cards = []
    if deck.is_a?(Deck)
      5.times{ |_| @cards << deck.draw }
    elsif deck.is_a?(Array)
      @cards = deck
    end
    @ranks = @cards.map { |card| card.rank }.uniq
  end

  def self.evaluate(hand)
    hand.evaluate
  end

  def print
    puts @cards
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def <=>(other_hand)
    HAND_RANKS.index(evaluate) <=> HAND_RANKS.index(other_hand.evaluate)
  end

  def best_hand
    possible_hands = @cards.combination(5).to_a.map{ |hand| PokerHand.new(hand) }
    possible_hands.sort.last.print
  end

  def cards
    @cards
  end

  private

  def royal_flush?
    @cards.min.value == 10 && straight_flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    @ranks.any? do |rank|
      @cards.count{ |card| card.rank == rank } == 4
    end
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    @cards.map{ |card| card.suit }.uniq.size == 1
  end

  def straight?
    low = @cards.min.value
    ((low + 1)..(low + 4)).all? do |i|
      @cards.any?{ |card| card.value == i }
    end
  end

  def three_of_a_kind?
    @ranks.any? do |rank|
      @cards.count{ |card| card.rank == rank } == 3
    end
  end

  def two_pair?
    pairs == 2
  end

  def pair?
    pairs == 1
  end

  def pairs
    pairs = @ranks.count do |rank|
      @cards.count{ |card| card.rank == rank } == 2
    end
  end
end


hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate, ''

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

hand1 = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand1.evaluate == 'Full house'
puts PokerHand.evaluate(hand1)
#
hand3 = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand3.evaluate == 'Straight'
puts PokerHand.evaluate(hand3)
#
hand2 = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand2.evaluate == 'Flush'
puts PokerHand.evaluate(hand2)

puts hand1 > hand2
puts hand2 > hand3
puts hand2 < hand1
puts hand3 < hand2, '', '', ''
#
#
#
hand4 = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs'),
  Card.new(8,      'Diamonds'),
  Card.new(9,      'Hearts')
])
hand4.print
puts ''
puts hand4.best_hand
# puts PokerHand.evaluate(hand4)
