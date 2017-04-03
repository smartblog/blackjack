require_relative 'game'
require_relative 'player'

puts "Start a Game"
puts "------------"

d = Player.new("Dealer")
u = Player.new("Boris")

game = Game.new

u.get_card(game.card_deck.shuffle!.sample)
u.get_card(game.card_deck.shuffle!.sample)
d.get_card(game.card_deck.shuffle!.sample)
d.get_card(game.card_deck.shuffle!.sample)

u.scoring
d.scoring

puts "#{d.username} | #{d.cards}"
puts d.score

puts "#{u.username} | #{u.cards}"
puts u.score

u.get_card(game.card_deck.shuffle!.sample)
puts "#{u.username} | #{u.cards}"
u.scoring
puts u.score
