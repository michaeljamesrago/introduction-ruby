class Player
  attr_accessor :name

  def initialize(name=nil)
    @hand = []
    @name = name
  end

  def hit_or_stay
    answer = nil
    puts "Do you want another card? (y/n)"
    loop do
      answer = gets.chomp.lstrip.chr.downcase
      break if ['y', 'n'].include?(answer)
      puts "Please answer 'y' or 'n'"
      puts "Do you want another card?"
    end
    puts ""
    return :hit if answer == 'y'
  end

  def busted?
    total > 21
  end

  def display_hand
    puts "#{@name} has:"
    @hand.each { |card| puts "\t#{card}" }
    puts "Total: #{total}"
    puts ""
  end

  def total
    total_value = @hand.reduce(0) { |acc, elem| elem.value + acc }
    ace_count = @hand.count { |card| card.rank == "Ace" }
    while total_value > 21 && ace_count > 0
      total_value -= 10
      ace_count -= 1
    end
    total_value
  end

  protected

  def receive_card(card)
    @hand << card
  end

  def clear_hand
    @hand.clear
  end
end

class Dealer < Player
  def initialize
    super("Dealer")
    @deck = Deck.new
    @show_all = false
  end

  def deal(player)
    player.clear_hand
    2.times { |_| hit(player) }
  end

  def hit_or_stay
    @show_all = true
    return :hit unless total >= 17
  end

  def hit(player)
    player.receive_card(@deck.pop)
  end

  def display_hand
    @show_all ? super : puts("#{@name} is showing \n\t#{@hand[0]}", "")
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def pop
    card = @cards.shift
    if !!card
      reset
      card = @cards.shift
    end
    card
  end

  def shuffle
    @cards.shuffle
  end

  private

  def reset
    @cards = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end
    @cards.shuffle!
  end
end

class Card
  attr_reader :rank
  VALUES = { 'Jack' => 10, 'Queen' => 10, 'King' => 10, 'Ace' => 11 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def value
    VALUES.fetch(@rank, @rank)
  end
end

class Game
  def initialize
    @player = Player.new
    @dealer = Dealer.new
  end

  def start
    @player.name = ask_name
    loop do
      @dealer.deal(@player)
      @dealer.deal(@dealer)
      display_game
      take_turn(@player)
      take_turn(@dealer) unless @player.busted?
      display_game
      display_result
      break unless play_again?
    end
    thanks_message
  end

  private

  def display_game
    system("cls")
    banner
    @dealer.display_hand
    @player.display_hand
  end

  def banner
    puts "****************************************************************"
    puts "*                                                              *"
    puts "*   ***** *     * **** *   * ***** *   *    ****  *   * ****   *"
    puts "*     *   *     * *    **  *   *   *   *   *    * **  * *      *"
    puts "*     *   *  *  * ***  * * *   *    * *    *    * * * * ***    *"
    puts "*     *    * * *  *    *  **   *     *     *    * *  ** *      *"
    puts "*     *    *   *  **** *   *   *     *      ****  *   * ****   *"
    puts "*                                                              *"
    puts "****************************************************************"
  end

  def ask_name
    name = nil
    system('cls')
    banner
    puts "", "Please enter your name:"
    loop do
      name = gets.chomp.strip
      break unless name.downcase == "dealer"
      puts "You cannot choose that name."
      puts "Please enter any name except Dealer:"
    end
    name
  end

  def take_turn(player)
    while player.hit_or_stay == :hit
      @dealer.hit(player)
      display_game unless player.class == Dealer
      break if player.busted?
    end
  end

  def display_result
    if @player.busted?
      puts "You have busted.", ""
    elsif @dealer.busted?
      puts "The dealer has busted.", ""
    end
    puts !!who_won ? "#{who_won.name} wins.\n" : "It's a push.\n"
  end

  def who_won
    winner = nil
    if @player.busted?
      winner = @dealer
    elsif @dealer.busted?
      winner = @player
    elsif @player.total > @dealer.total
      winner = @player
    elsif @dealer.total > @player.total
      winner = @dealer
    end
    winner
  end

  def play_again?
    puts "Do you want to play again?"
    answer = nil
    loop do
      answer = gets.chomp.lstrip.chr.downcase
      break if ['y', 'n'].include?(answer)
      puts "Please answer 'y' or 'n'"
      puts "Do you want to play again?"
    end
    answer == 'y'
  end

  def thanks_message
    puts "Thank you for playing Twenty One."
  end
end

Game.new.start
