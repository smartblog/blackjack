class Game

  attr_accessor :card_deck

  def initialize
    @card_deck = []
    @cards = [(2..10).to_a, 'J', 'Q', 'K', 'A'].flatten
    @suits = ["\u2661", "\u2662", "\u2667", "\u2664"]

    @cards.each do |card|
      @suits.each do |suit|
        @card_deck << "#{card}" + "#{suit}"
      end
    end
  end
end

game = Game.new

puts game.card_deck
