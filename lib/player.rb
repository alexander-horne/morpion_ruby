class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :nom, :valeur

  
  def initialize(nom, valeur)
    #TO DO : doit régler son nom et sa valeur
    @nom = nom
    @valeur = valeur
  end