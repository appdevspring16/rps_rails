class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    def comp_move moves
      return moves.sample
    end
    def outcome comp,user_move
      if comp == user_move
        return "It's a tie!"
      elsif comp == "rock" && user_move == "paper"
        return "You Win"
      elsif comp == "paper" && user_move == "scissors"
        return "You Win"
      elsif comp == "scissors" && user_move == "rock"
        return "You Win"
      else
        return "You Lose"
      end
    end
    def play moves
      puts "Your move: rock, paper, or scissors?"
      user_move = @user_move
      comp = comp_move(moves)
      result = outcome(comp,user_move)
      @computer_move = comp
      @result = result
    end
    moves = ["rock","paper","scissors"]
    play(moves)

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
