require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/', __FILE__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'show'

class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game = Game.new
    unless board.victory?
      game.turn
    end
    game.game_end
    game.new_round
  end

end

puts
puts "     |           |     "
puts "-----|-----------|-----"
puts "     |TIC-TAC-TOE|     "
puts "-----|-----------|-----"
puts "     |           |     \n\n"
puts "Player 1 :"
print "> "
gets.chomp = name
Player.new(name, X)
puts "Player 2 :"
print "> "
gets.chomp = name
Player.new(name, O)

binding.pry