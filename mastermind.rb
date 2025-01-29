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
      @guess = gets.strip.split("")

      loop do 
        if @guess.length == 4
          return @guess
        end
        # return statement not triggered so we have an invalid code
        print "Invalid code, please enter a 4 number code: "
        @guess = gets.strip.split("")
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
      loop do # this needs to loop 12 times for the 12 rounds of guessing 
        # player makes a guess 
        # 
        # check if the guess was correct 
        # 
        # computer gives feedback on guess
        # 
      end
      # if 12 rounds are done and game has not finished yet, then player loses
    end

    def check_guess 
      # this function compares the players guess to the secret code 
      # 
      # returns how many colours are in correct position and how many are 
      # correct but in wrong position
    end

    def create_code
      # this is the function that creates a random code 
      4.times do
        @code.push(rand(1..10))
      end
      puts @code
    end

    def code_was_guessed? 
      # this function checks whether the player has guessed the code 
    end


  end
end