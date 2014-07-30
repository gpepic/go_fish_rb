require './lib/game'
require './lib/player'
require './lib/card'


# p new_game = Game.new("person", "person2gi")
# p new_game.player1.hand
a = %w(a b c d e e e e)
a.each do |letter|
  if a.count(letter) == 4
    a.delete(letter)
  end
end
puts a

