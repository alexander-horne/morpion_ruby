class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
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
	perform
end