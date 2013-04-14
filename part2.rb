class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  
  game.each { |player| raise NoSuchStrategyError unless player[1] =~ /[RrSsPp]/}
  @@moves = {'r' => 's', 's' => 'p', 'p' => 'r'}
  
  if game[0][1].downcase == game[1][1].downcase
    return game[0]
  elsif @@moves[game[0][1].downcase] == game[1][1].downcase
    return game[0]
  else
    return game[1]
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  # Check if we're at a game
  if tournament[0][0].is_a? String
    return rps_game_winner(tournament)
  end
  # Otherwise keep going down the rabbit hole
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end


p rps_game_winner([["Armando", "P"], ["Dave", "r"]])
p rps_game_winner([["Armando", "R"], ["Dave", "r"]])
p rps_game_winner([["Armando", "R"], ["Dave", "p"]])


p rps_tournament_winner([[[["Armando", "P"],["Dave", "S"]],[["Richard", "R"],["Michael", "S"]]],[[["Allen", "S"],["Omer", "P"]],[["David E.", "R"],["Richard X.", "P"]]]])