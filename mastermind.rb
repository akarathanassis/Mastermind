module Mastermind

  class Player 
    def initialize(name)
      @name = name 
      # initialise the players guess array
      @guess = Array.new
    end
    attr_reader :name


    def guess 
      # here the player is prompted to make a guess of 4 numbers 
      print "Make a 4 number guess: "
      guess = gets.strip.split("")
      guess.map! { |x| x.to_i}

      loop do 
        if guess.length == 4
          return guess
        end
        # return statement not triggered so we have an invalid code
        print "Invalid code, please enter a 4 number code: "
        guess = gets.strip.split("")
        guess.map! { |x| x.to_i}
      end
    end




  end




  class Game 
    def initialize(player)
      # define a 4 element array to store secret code - @code = Array.new
      @code = Array.new

      # define the player 
      @player = player
    end
    attr_reader :player, :code 



    def play_game
      # generate random 4 color code 
      code = create_code
      12.times do # this needs to loop 12 times for the 12 rounds of guessing 
        # player makes a guess 
        guess = @player.guess
        # check if the guess was correct 
        if code_was_guessed?(guess, code)
          puts "
                You guessed the code! You win
               "
          return
        end
        # computer gives feedback on guess
        check_guess(guess, code)
      end
      # if 12 rounds are done and game has not finished yet, then player loses
      puts "
            You failed to guess the code. You lose :(
           "
      puts "The code was: #{code}"
    end

    def check_guess(guess, code) 
      # this function compares the players guess to the secret code 
      # 
      # returns how many numbers are in correct position and how many are 
      # correct but in wrong position
      correct = 0
      correct_wrong_position = 0
      guess.each_with_index do |element, index|
        if (element == code[index])
          correct += 1
        else
          if (code.include?(element)) && !(element == code[index])
            correct_wrong_position += 1  
          end
        end
      end
      puts "
            Correct: #{correct}    Wrong Position: #{correct_wrong_position}
           "
    end

    def create_code
      # this is the function that creates a random code 
      4.times do
        @code.push(rand(1..6))
      end
      @code
    end

    def code_was_guessed?(guess, code)
      # this function checks whether the player has guessed the code 
      guess == code
    end


  end
end