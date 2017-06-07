userInput = IO.gets "Let's play a game. Rock, paper, or scissors? "
z = String.downcase(userInput)
q = String.trim(z)
IO.puts "Your move is #{q}."
userMove = String.to_atom(q)

a = :rand.uniform(3)
  computerMove =
  case a do
    1 -> :rock
    2 -> :paper
    3 -> :scissors
  end

IO.puts "The computer's move is #{computerMove}."

case {userMove, computerMove} do
  {:rock, :rock} -> IO.puts "It's a tie."
  {:rock, :paper} -> IO.puts "Better luck next time."
  {:rock, :scissors}  -> IO.puts "You win this one."
  {:paper, :rock}  -> IO.puts "You win this one."
  {:paper, :paper} -> IO.puts "It's a tie."
  {:paper, :scissors}  -> IO.puts "Better luck next time."
  {:scissors, :rock}  -> IO.puts "Better luck next time."
  {:scissors, :paper}  -> IO.puts "You win this one."
  {:scissors, :scissors} -> IO.puts "It's a tie."
end
