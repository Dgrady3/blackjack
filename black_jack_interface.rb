require 'pry'
require_relative 'black_jack_interface'

SUITS = ["club", "spade", "diamond", "hearts"]
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "K","Q","a"]

deck = Deck.new
binding.pry
