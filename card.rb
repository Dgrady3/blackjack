

class Card
  attr_reader :rank, :suit
    def initialize (rank, suit)
      @rank = rank
      @suit = suit
    end

    def face_card?
     ["K", "J", "Q"].include?(rank)
   end

    def to_i
      rank.to_i
    end

    def ace?
     ['A'].include?(rank)
    end

    def join
      card = [rank, suit]
      card.join(' ')
    end
end









