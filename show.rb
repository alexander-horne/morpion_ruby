class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
		white5 = "     ".colorize(:background => :white)
		white2 = "  ".colorize(:background => :white)
		puts "          A        B        C      "
		puts "     #===========================#"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "   1 |#{white2}#{board.boardcase_array[0].value}#{white2}|#{white2}#{board.boardcase_array[1].value}#{white2}|#{white2}#{board.boardcase_array[2].value}#{white2}|"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "     #===========================#"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "   2 |#{white2}#{board.boardcase_array[3].value}#{white2}|#{white2}#{board.boardcase_array[4].value}#{white2}|#{white2}#{board.boardcase_array[5].value}#{white2}|"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "     #===========================#"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "   3 |#{white2}#{board.boardcase_array[6].value}#{white2}|#{white2}#{board.boardcase_array[7].value}#{white2}|#{white2}#{board.boardcase_array[8].value}#{white2}|"
		puts "     |#{white5}|#{white5}|#{white5}|"
		puts "     #===========================#"

	end

end