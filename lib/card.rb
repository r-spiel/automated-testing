
# card.rb
VALID_SUITES = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError.new("Invalid values") if value <= 0 || value > 13
    raise ArgumentError.new("Invalid suit") if !VALID_SUITES.include?(suit)

    @value = value
    @suit = suit

  end

  def convert_to_face_card(value)
    face_cards = { 1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King" }
    if face_cards.keys.include?(value)
      face_card = face_cards[value]
    end

    return face_card
  end

  def to_s
    convert_to_face_card(value)
    return "#{value} of #{suit.to_s}"
  end

end
