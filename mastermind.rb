module Mastermind

  class Player 
    def initialize 
      
    end


    def guess 
      # here the player is prompted to make a guess of 4 colours 
      # one in each position 
      # 
      #returns a 4 element array of colours that the player guessed 
    end

  end




  class Game 
    def initialize(player)
      # define a 4 element array to store secret code - @code = Array.new(4)
      # define the player 
      
    end



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
    end

    def code_was_guessed? 
      # this function checks whether the player has guessed the code 
    end


  end
end