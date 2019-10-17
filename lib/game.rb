class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :players_array

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @players_array = []
    values = ["X", "O"]
    2.times do |i|
      @players_array << Player.new(name = "Player#{i}", value=values[i])
    end
    @current_player = @players_array[0]
    @status = "on going"
    @board = Board.new
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    if @status == "on going"
      play_turn(@current_player)
      if @current_player == players_array[0]
        @current_player = players_array[1]
      else
        @current_player = players_array[0]
      end
    end
  end

  def play_turn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la boardCase jouée en fonction de la valeur du joueur (X ou O)

    puts "C'est au tour de #{current_player.name} : #{current_player.value}"
    puts "Dans quelle case souhaites-tu jouer ?"
    print "> "
    choice = gets.chomp.to_i # TODO : faire un dic de correspondance
    @board.boardcase_array[choice].value = current_player.value

  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    @players_array.each do |player|
      (board.boardcase_array[0] == player.value && board.boardcase_array[1] == player.value && board.boardcase_array[3] == player.value) ||
      (board.boardcase_array[4] == player.value && board.boardcase_array[5] == player.value && board.boardcase_array[6] == player.value) ||
      (board.boardcase_array[7] == player.value && board.boardcase_array[8] == player.value && board.boardcase_array[9] == player.value) ||
      (board.boardcase_array[1] == player.value && board.boardcase_array[4] == player.value && board.boardcase_array[7] == player.value) ||
      (board.boardcase_array[2] == player.value && board.boardcase_array[5] == player.value && board.boardcase_array[8] == player.value) ||
      (board.boardcase_array[3] == player.value && board.boardcase_array[6] == player.value && board.boardcase_array[9] == player.value) ||
      (board.boardcase_array[1] == player.value && board.boardcase_array[5] == player.value && board.boardcase_array[9] == player.value) ||
      (board.boardcase_array[3] == player.value && board.boardcase_array[5] == player.value && board.boardcase_array[7] == player.value)
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    puts "Victoire de #{@current_player.name} !"
  end    
end
