class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    possibilities = ["rock","paper","scissors"]
    compMove = possibilities.sample
    if @user_move == compMove
      resultS = "tied"
    else
      if ((@user_move == "rock" && compMove == "scissors")||(@user_move == "paper" && compMove == "rock")||(@user_move == "scissors" && compMove == "paper"))
        resultS = "win"
      else
        resultS = "lose"
      end
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = compMove

    @result = resultS

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
