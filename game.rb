module Game

  module ClassMethods
    def compare(player1, player2)
      player1.score = 0 if player1.scoring > 21
      player2.score = 0 if player2.scoring > 21
      return player1 if player1.score > player2.score
      return player2 if player2.score > player1.score
      return nil if player2.score == player1.score
    end

    def new_game(player1, player2, deck)
      deck.cards.shuffle!
      player1.del_cards
      player2.del_cards
      2.times { player1.get_card(deck) }
      2.times { player2.get_card(deck) }
      player1.money -= 10
      player2.money -= 10
    end
  end

end
