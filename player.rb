class Player

  attr_accessor :username, :money, :cards, :score

  def initialize(name)
    @username = name
    @money = 100
    @cards = []
    @score = 0
  end

  def get_card(card)
    @cards << card
  end

  def scoring
    @score = 0
    @cards.each do |card|
      @score += 10 if %w[ J Q K ].include?(card.chop)
      @score += 11 if card.chop == 'A'
      @score += card.chop.to_i unless %w[ J Q K A ].include?(card.chop)
    end
  @score
  end
end
