require_relative 'card'

class Deck
attr_accessor :random_card

  def initialize
    @start_deck = []
    make_deck
    @deck = @start_deck.shuffle
  end

  def create_card
    @random_card = @deck.shift
    @deck.delete(random_card)
  end

  def make_third_card
    @third_card = create_card.random_card
  end

  private

  def make_deck
  	Card::SUITS.each do |suit|
      Card::CARDS.each { |value| @start_deck << Card.new(value, suit) }
  	end
  end
end