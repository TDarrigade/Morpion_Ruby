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
    return "la case #{@nom} est #{$etat}"
  end
end

class Board
  # attr_accessor :cases
  def initialize
    puts "création du plateau"
    @a1 = Case.new("a1","_")
    @a2 = Case.new("a2","_")
    @a3 = Case.new("a3","_")
    @b1 = Case.new("b1","_")
    @b2 = Case.new("b2","_")
    @b3 = Case.new("b3","_")
    @c1 = Case.new("c1","_")
    @c2 = Case.new("c2","_")
    @c3 = Case.new("c3","_")

    # @cases = cases
    @@cases = [@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3]

  end
  def interface
    puts  "#{@@cases[0].etat} | #{@@cases[1].etat} | #{@@cases[2].etat}"
    puts  "#{@@cases[3].etat} | #{@@cases[4].etat} | #{@@cases[5].etat}"
    puts  "#{@@cases[6].etat} | #{@@cases[7].etat} | #{@@cases[8].etat}"
  end
  def is_played(nv_etat)
    @cases[nv_etat] = nv_etat
  end
end

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

class Game
  def initialize
    puts "P1 Name"
    p1 = gets.chomp.to_s
    puts "P2 Name"
    p2 = gets.chomp.to_s
    puts "Quelle case jouer ?"
    choice = gets.chomp.to_s
    jouer(choice)
  end

  def jouer(position)
    if @cases[0].etat == position   
       @cases[0].etat = @valeur
    end
  end
  p1 = Player.new(p1, "X")
  p2 = Player.new(p2, "O")



end
#---------------------------

plateau = Board.new
plateau.interface

Game.new
