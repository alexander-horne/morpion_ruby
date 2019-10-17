class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :boardcase_array

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    
    @boardcase_array = []
    1..9.times { @boardcase_array << BoardCase.new(value = ' ') }
    
  end

  def play_turn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

    puts "C'est au tour de #{current_player.name} : #{current_player.value}"
    puts "Dans quelle case souhaites-tu jouer ?"
    print "> "
    choice = gets.chomp
    @boardcase_array[choice] = current_player.value

  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    @players_array.each do |player|
      (boardcase_array[0] == player.value && boardcase_array[1] == player.value && boardcase_array[3] == player.value) ||
      (boardcase_array[4] == player.value && boardcase_array[5] == player.value && boardcase_array[6] == player.value) ||
      (boardcase_array[7] == player.value && boardcase_array[8] == player.value && boardcase_array[9] == player.value) ||
      (boardcase_array[1] == player.value && boardcase_array[4] == player.value && boardcase_array[7] == player.value) ||
      (boardcase_array[2] == player.value && boardcase_array[5] == player.value && boardcase_array[8] == player.value) ||
      (boardcase_array[3] == player.value && boardcase_array[6] == player.value && boardcase_array[9] == player.value) ||
      (boardcase_array[1] == player.value && boardcase_array[5] == player.value && boardcase_array[9] == player.value) ||
      (boardcase_array[3] == player.value && boardcase_array[5] == player.value && boardcase_array[7] == player.value)
    end
  end

end