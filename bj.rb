require_relative 'deck'
require_relative 'card'
require_relative 'hand'
require 'pry'

SUITS = ["club", "spade", "diamond", "hearts"]
RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "K","Q","A"]

deck = Deck.new

dealer_hand = []
dealer = Hand.new(dealer_hand)
player_hand = []
player = Hand.new(player_hand)



puts "Welcome to Blackjack!"

  02.times do
    player_hand << deck.draw
  end

  player_hand.each do |card|
    puts "player was dealt #{card.join}"
  end

puts "Player score #{player.count_cards}"

puts "Hit or stand (H/S) :"
input = gets.chomp.downcase


while input != "s"
    player_hand << deck.draw
    puts "player was dealt #{player_hand[-1].join}"
    puts "Player score #{player.count_cards}"
    if player.count_cards > 21
      puts "You suck you loser"
      exit
    end
    puts "Hit or stand (H/S) :"
    input = gets.chomp.downcase
  end
  puts "Player score #{player.count_cards}"

  02.times do
    dealer_hand << deck.draw
  end

  dealer_hand.each do |card|
    puts "Dealer was dealt #{card.join}"
  end

puts "Dealer score #{dealer.count_cards}"

while dealer.count_cards < 17
  dealer_hand << deck.draw
  puts "Dealer hits!"
    puts "Dealer was dealt #{dealer_hand[-1].join}"
    puts "His score #{dealer.count_cards}"
  end
    if dealer.count_cards > 21
      puts "ha he blows"
      exit
    end

    puts "Dealer stands."
    if player.count_cards > dealer.count_cards
      puts "You win"
    elsif player.count_cards < dealer.count_cards
      puts "He wins"
    else
      puts "Yall tied"
    end


































