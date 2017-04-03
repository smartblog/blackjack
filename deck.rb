class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    @ratings = [(2..10).to_a, 'J', 'Q', 'K', 'A'].flatten
    @suits = ["\u2661", "\u2662", "\u2667", "\u2664"]

    # Create card deck
    @ratings.each { |card| @suits.each { |suit| @cards << "#{card}" + "#{suit}" } }
  end
end
