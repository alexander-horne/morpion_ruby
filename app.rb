require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/', __FILE__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
require_relative 'show'

class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game = Game.new
    show = Show.new(game.board)
    unless game.victory?
      show.show_board(game.board)
      game.turn
    end
    game.game_end
    # game.new_round
  end

end

Application.perform