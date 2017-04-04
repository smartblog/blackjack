require_relative 'deck'
require_relative 'player'
require_relative 'game'

extend Game::ClassMethods

puts "Enter your name"
name = gets.chomp

deck = Deck.new
bank = 20

d = Player.new('Dealer')
u = Player.new(name)

loop do
  puts '---------------- | --- Table --- '
  puts "-- Black Jack -- | #{d.username} | $#{d.money}"
  puts "---------------- | #{u.username} | $#{u.money}"
  puts "1 - Play"
  puts "0 - Exit"
  menu = gets.chomp.to_i
  break if menu.zero?
  case menu
  when 1
    new_game(u, d, deck)
    puts "Dealer cards: ['*', '*']"
    puts "Your cards: #{u.cards} | Score: #{u.scoring}"
    puts "----------------------------------------"
    puts '1 - Skip | 2 - Get Card | 3 - Open Cards'
    number = gets.chomp.to_i
    case number
    when 1
      puts 'Dealer move'
      d.dealer_get_card(d.scoring, deck)
    when 2
      u.get_card(deck)
      d.dealer_get_card(d.scoring, deck)
    when 3
      puts 'Open cards'
    end
    d.info
    u.info
    if compare(d, u) == nil
      puts "DRAW"
    else
      puts "#{compare(d, u).username} WIN #{bank}"
      compare(d, u).money += bank
    end
  end
end
