class Card
    def initialize (rank, suit)
      @rank = rank
      @suit = suit
    end

    def face_card
      ['J', 'K', 'Q'].include?(@rank)
    end

    def ace
      ['A'].include?(@rank)
    end
  end


class Deck
  def initialize
    @deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit)
        @deck.shuffle!
      end
    end
  end

  def draw
    @deck.pop
  end
end


class hand
  def initialize(user)
    @user = user
    @hand = []


  end

  def stands
  end

end

