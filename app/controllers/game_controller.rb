class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    @computer_move = ["rock","paper","scissors"].sample
    if @user_move == "rock"
      if @computer_move == "rock"
        @result= "It's a Tie"
      elsif @computer_move == "paper"
        @result= "You Lose"
      else
        @result= "You Win"
      end
    end
    if @user_move == "paper"
      if @computer_move == "paper"
        @result= "It's a Tie"
      elsif @computer_move == "scissors"
        @result= "You Lose"
      else
        @result= "You Win"
      end
    end
    if @user_move == "scissors"
      if @computer_move == "scissors"
        @result= "It's a Tie"
      elsif @computer_move == "rock"
        @result= "You Lose"
      else
        @result= "You Win"
      end
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    #@computer_move = "Replace this string with the correct value."

    #@result = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
