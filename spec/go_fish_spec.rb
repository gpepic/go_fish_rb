require 'rspec'
require 'card'
require 'player'
require 'game'


describe Card do
  it 'initilizes with rank and suit' do
    new_card = Card.new(2, "D")
    expect(new_card.rank).to eq 2
    expect(new_card.suit).to eq "D"
  end
end

describe Player do
  it 'initilizes with name, hand, books' do
    new_card = Card.new(2, "D")
    new_player = Player.new("Mark", [new_card])
    expect(new_player.name).to eq "Mark"
    expect(new_player.hand).to eq [new_card]
    expect(new_player.books).to eq 0
  end

   it 'deletes books from hand and adds point to player score' do
    new_player = Player.new("Mark", [new_card])
    new_card1 = Card.new(2, "C")
    new_card2 = Card.new(2, "H")
    new_card3 = Card.new(2, "S")
    new_card4 = Card.new(2, "D")
    new_player.hand = [new_card1, new_card2, new_card3, new_card4]
    new_player.find_books
    expect(new_player.books).to eq 1
    expect(new_player.hand.length).to eq 0
  end
end

describe Game do

  it 'initilizes with 2 players, 52 card deckand turn count' do
    new_game = Game.new('Ginger', "Mark")
    expect(new_game.player1.name).to eq 'Ginger'
    expect(new_game.player2.name).to eq 'Mark'
    expect(new_game.turn).to eq 0
    expect(new_game.player1.hand.length).to eq 7
    expect(new_game.player2.hand.length).to eq 7
    expect(new_game.deck.length).to eq 38
  end

end

