class Game
  attr_accessor(:player1, :player2, :deck, :turn)

  def initialize(player1_name, player2_name)
    ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
    suits = %w{Spades Hearts Diamonds Clubs}
    @deck = []
    suits.each do |suit|
      ranks.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
    @deck.shuffle!
    player1_starting_hand = []
    player2_starting_hand = []
    7.times do
      player1_starting_hand << @deck.pop
      player2_starting_hand << @deck.pop
    end
    @player1 = Player.new(player1_name, player1_starting_hand)
    @player2 = Player.new(player2_name, player2_starting_hand)
    @turn = 0

  end
end














