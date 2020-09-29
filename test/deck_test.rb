require_relative 'test_helper'

describe Deck do
  # let(:new_deck){
  #   card_array = []
  #   [:hearts, :spades, :clubs, :diamonds].each do |suit|
  #     (1..13).each do |value|
  #       card_array << Card.new(value, suit)
  #     end
  #   end
  #   new_deck = Deck.new(card_array)
  # }
  before do
    @deck = Deck.new
  end

  it "can be instantiated" do
    expect(@deck).must_be_instance_of Deck
  end

  it "draw a card, remove from array and return the drawn card" do
    #expect(@deck).length.must_equal 52  ???? Why does this return 2 and not 52
    expect(@deck.draw).must_be_instance_of Card
    #was going to write expect length to be 51
  end
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

end
