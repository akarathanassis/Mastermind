require_relative "Mastermind"

player = Mastermind::Player.new("Alex")

game = Mastermind::Game.new(player)

game.play_game
