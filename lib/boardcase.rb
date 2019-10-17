require 'pry'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :valeur, :position

  def initialize(valeur, position)
	    #TO DO : doit régler sa valeur, ainsi que son numéro de case
	    @valeur = valeur
	    @position = position
  end

end


binding.pry