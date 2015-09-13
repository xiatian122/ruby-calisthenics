class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # Strategy Check
    case player1[1]
    when "P"
    when "R"
    when "S"
    else # raise "Strategy must be one of R,P,S"
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end

    case player2[1]
    when "P"
    when "R"
    when "S"
    else # raise "Strategy must be one of R,P,S"
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end

    # The same strategy
    if player1[1] == player2[1]
    	return player1
    end
    # Then perform comparison
    case player1[1]+player2[1]
    when "PR"
    	return player1
    when "RS"
    	return player1
    when "SP"
    	return player1
    else
    	return player2
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if tournament[1].class.to_s == "String"
        return tournament
    else
        return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end


  end

end
