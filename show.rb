class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
		puts
		puts "          A        B        C      "
		puts "     #===========================#"
		puts "     ||       ||       ||       ||"
		puts "   1 ||   #{board.boardcase_array[0].value}   ||   #{board.boardcase_array[1].value}   ||   #{board.boardcase_array[2].value}   ||"
		puts "     ||       ||       ||       ||"
		puts "     #===========================#"
		puts "     ||       ||       ||       ||"
		puts "   2 ||   #{board.boardcase_array[3].value}   ||   #{board.boardcase_array[4].value}   ||   #{board.boardcase_array[5].value}   ||"
		puts "     ||       ||       ||       ||"
		puts "     #===========================#"
		puts "     ||       ||       ||       ||"
		puts "   3 ||   #{board.boardcase_array[6].value}   ||   #{board.boardcase_array[7].value}   ||   #{board.boardcase_array[8].value}   ||"
		puts "     ||       ||       ||       ||"
		puts "     #===========================#"
		puts
	end

end