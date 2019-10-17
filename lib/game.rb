class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :players_array

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @players_array = []
    values = ["X", "O"]
    2.times do |i|
      @players_array << Player.new(name = "Player[i]", value=values[i])
    end
    @current_player = @players_array[0]
    @status = "on going"
    @board = Board.new
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    if @status = "on going"
      until victory? = true
        player = player1
        play_turn(player)
        victory?
        player = player2
        play_turn(player)
        victory?
      end
    end

  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    
end
