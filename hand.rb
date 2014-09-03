class Hand
  def initialize(user_array)
    @user_array = user_array
  end

  def count_cards
    count = 0
    ranks = []

  @user_array.each do |card|
    ranks << card.rank
  end
      ranks.each do |rank|
        if["K", "Q", "J"].include?(rank)
        count += 10
      elsif rank.include?("A")
        count += 11
      else
        count += rank.to_i
      end
    end
      if ranks.include?("A") && count > 21
        count -= 10
    end
    count
  end
end

