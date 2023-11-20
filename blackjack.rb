#https://exercism.org/tracks/ruby/exercises/blackjack/edit
module Blackjack
  def self.parse_card(card)
     case card
      when 'ace' then 11	
      when 'two' then 2	
      when 'three' then 3	
      when 'four' then 4	
      when 'five' then 5	
      when 'six' then 6	
      when 'seven' then 7	
      when 'eight' then 8
      when 'nine' then 9
      when  "ten" then 10
      when 'jack' then 10
      when 'queen' then 10
      when 'king' then 10
      else 0
   end
  end

  def self.card_range(card1, card2=0)
    result = parse_card(card1)+parse_card(card2)
    
    case result
      when 4..11 then 'low'
      when 12..16 then 'mid'
      when 17..20 then 'high'
      when 21 then 'blackjack'
      else result
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    me = card_range(card1,card2)    
    case me
      when 'low' then 'H'
      when 22 then 'P'
      when 'high' then 'S'
      when 'mid'
        parse_card(dealer_card) >= 7 ? 'H': 'S'
      when 'blackjack'
      !['ace','jack','queen','king','ten'].include?(dealer_card) ? 'W' : 'S'
        
    end
    
  end
end
