class GuessingGame
  RANGE = (1..100)
  MAX_GUESSES = 7
  PROMPT_STRING = "Enter a number between 1 and 100: "
  GUESS_EVALUATOR = { 0   =>  "That's the number!",
                      1   =>  "Your guess is too high.",
                      -1  =>  "Your guess is too low."  }

  def initialize
    @target = nil
    @guess_count = 0
    @game_won = false
  end

  def play
    @target = rand(RANGE)
    while @guess_count < MAX_GUESSES && !@game_won
      puts guesses_left_message
      print PROMPT_STRING
      guess = guess_num
      puts guess_evaluation(guess), "\n"
    end
    puts result_message(@game_won)
  end

  def guesses_left_message
    guesses_left = MAX_GUESSES - @guess_count
    guesses_left > 1 ? "You have #{guesses_left} guesses left." : "You have one guess left."
  end

  def guess_num
    num = nil
    loop do
      num = gets.chomp.to_i
      if validate_guess(num)
        @guess_count += 1
        return num
      end
      print "Invalid guess. #{PROMPT_STRING}"
    end
  end

  def validate_guess(guess)
    RANGE.cover?(guess)
  end

  def guess_evaluation(guess)
    val = guess <=> @target
    @game_won = true if val == 0
    return GUESS_EVALUATOR[val]
  end

  def result_message(game_won)
    game_won ? "You won!" : "You have no more guesses. You lost."
  end
end
gg = GuessingGame.new
gg.play
