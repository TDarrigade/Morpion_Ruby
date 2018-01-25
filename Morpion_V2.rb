require 'pp'
require 'pry'

class Case
  attr_reader :nom
  attr_accessor :etat
  def initialize(nom,etat)
    @nom = nom
    @etat = etat
    @etat = "_"
  end
  def etat
    return @etat
  end
  def nom
    return @nom
  end
  def info
    return "la case #{@nom} est #{@etat}"
  end
end

class Board
  def initialize
    puts "création du plateau"
    #On crée le hash de départ avec les clés dont les valeurs sont des objets Case
    @cases = {
      :@a1 => Case.new("a1","_"), :@a2 => Case.new("a2","_"), :@a3 => Case.new("a3","_"),
      :@b1 => Case.new("b1","_"), :@b2 => Case.new("b2","_"), :@b3 => Case.new("b3","_"),
      :@c1 => Case.new("c1","_"), :@c2 => Case.new("c2","_"), :@c3 => Case.new("c3","_")
    }
  end
  def interface
    puts  "#{@cases[:@a1].etat} | #{@cases[:@b1].etat} | #{@cases[:@c1].etat}"
    puts  "#{@cases[:@b1].etat} | #{@cases[:@b2].etat} | #{@cases[:@c2].etat}"
    puts  "#{@cases[:@c1].etat} | #{@cases[:@c2].etat} | #{@cases[:@c3].etat}"
  end
  @interface

  # J'ai mis la class Player DANS Board… Cf. le gist de Félix
  # https://gist.github.com/felhix/ed862c5f504ff4c8e934da679f812224
  class Player
    attr_accessor :nom, :valeur
    def initialize(nom,valeur)
      @nom = nom
      @valeur = valeur
      win = false
    end
    def se_declare
      puts "Je suis #{@nom} et je joue les #{@valeur}"
    end
  end # fin de Player

  player1 = Player.new("joueur 1", "X") #Au board il y a le joueur 1, jouera X
  player2 = Player.new("joueur 2", "O") #Au board il y a le joueur 2, jouera O

end #Fin de board




class Game
  def initialize
    @new_game = Board.new #nouvelle partie, nouveau plateau
  end
  @new_game

end
#------------------------------------------

Game.new
