require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card.to_s).must_equal "#{card.value} of #{card.suit}"
        end
      end
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        [1, 11, 12, 13].each do |value|
          card = Card.new(value, suit)
          expect(card.to_s).must_equal "#{card.value} of #{card.suit}"
        end
      end

    end
  end

  describe "Reader methods" do

    let(:eight_spades){
      Card.new(8, :spades)
    }
    let(:king_hearts){
      Card.new(13, :hearts)
    }
    it "Can retrieve the value of the card using a `.value`." do
      expect(eight_spades.value).must_equal 8
      expect(king_hearts.value).must_equal 13
      # ensure that `.value works as expected`
    end

    it "Can retrieve the value of the card using a `.suit`." do
      expect(eight_spades.suit).must_equal :spades
      expect(king_hearts.suit).must_equal :hearts
      # ensure that `.suit works as expected returning the symbol of the suit`
    end
  end

end
