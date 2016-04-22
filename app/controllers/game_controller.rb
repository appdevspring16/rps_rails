class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @@user_move.
    # ===============================================================



    @computer_move = ["rock", "paper", "scissors"].sample

      if @user_move == @computer_move
        puts = "TIED"
      elsif @user_move=="rock" && @computer_move == "paper"
        puts = "LOSE"
      elsif @user_move=="rock" && @computer_move == "scissors"
        puts = "WIN!"
      elsif @user_move=="paper" && @computer_move == "rock"
        puts = "WIN!"
      elsif @user_move=="paper" && @computer_move == "scissors"
        puts = "LOSE"
      elsif @user_move=="scissors" && @computer_move == "rock"
        puts = "LOSE"
      elsif @user_move=="scissors" && @computer_move == "paper"
        puts = "WIN!"
      end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @result = puts


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
