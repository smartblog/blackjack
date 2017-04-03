class Player

  attr_accessor :username, :money, :cards, :score

  def initialize(name)
    @username = name
    @money = 100
    @cards = []
    @score = 0
  end

  def get_card(deck)
    card = deck.cards.sample
    deck.cards.delete(card)
    @cards << card
  end

  def scoring
    @score = 0
    @cards.each do |card|
      @score += 10 if %w[ J Q K ].include?(card.chop)
      @score += 1 if card.chop == 'A' && @score + 11 > 21
      @score += 11 if card.chop == 'A' && @score + 11 <= 21
      @score += card.chop.to_i unless %w[ J Q K A ].include?(card.chop)
    end
  @score
  end

  def info
    puts "#{self.username} $#{self.money} | Cards: #{self.cards} | Score: #{self.scoring}"
  end

  def del_cards
    @cards = []
  end

  def dealer_get_card(score, deck)
    if score < 20
      card = deck.cards.shuffle!.sample
      deck.cards.delete(card)
      @cards << card
    end
  end

  def win(bank)
    @money += bank
  end
end
