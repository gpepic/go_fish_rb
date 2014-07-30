require 'rspec'
require 'card'


describe Card do
  it 'initilizes with rank and suit' do
    new_card = Card.new(2, "D")
    expect(new_card.rank).to eq 2
    expect(new_card.suit).to eq "D"
  end
end
