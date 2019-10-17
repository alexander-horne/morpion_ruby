class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
		board.boardcase_array.each do |boardcase|
			print boardcase.value
			print " | "
		end
	end

end