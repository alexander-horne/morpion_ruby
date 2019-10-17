class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
	end

	def show_case
		if @valeur == "X"
			puts "-----"
			puts "| X |"
			puts "-----"
		elsif @valeur == "O"
			puts "-----"
			puts "| O |"
			puts "-----"
		else
			puts "-----"
			puts "|   |"
			puts "-----"
		end
	end
	
end