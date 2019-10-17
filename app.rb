system "Bundler install --quiet"
require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/', __FILE__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'colorize'
require_relative 'show'

class Application

  def perform(counter=0)
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game = Game.new(counter)
    game.counter += 1
    system("clear")
    show = Show.new
    until game.victory? == true
      system("clear")
      puts "       ### Partie #{game.counter} ###"
      show.show_board(game.board)
      game.turn
    end
    system("clear")
    show.show_board(game.board)
    game.game_end
    game.new_round
  end

end

app = Application.new 
app.perform