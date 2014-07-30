class Player
  attr_accessor(:name, :hand, :books)

  def initialize(name, starting_hand)
    @name = name
    @hand = starting_hand
    @books = 0
  end
end
