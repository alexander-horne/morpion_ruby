class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :value

  
  def initialize(nom, value)
    #TO DO : doit régler son nom et sa valeur
    @name = nom
    @value = value
  end
end