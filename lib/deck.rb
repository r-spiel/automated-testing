
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = [] #an array of card instances
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    drawn_card = @cards.pop
    # returns a card
    return drawn_card
  end

  def shuffle
    @cards.shuffle
  end
end

# r = Deck.new
#
# pp r
#
# p r.draw
# pp r  #it did delete it from the deck!  But how do I test that?
#
# pp r.shuffle #works