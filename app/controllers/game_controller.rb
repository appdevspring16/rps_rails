class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    tie = "Tie!"
    win = ["You won!", "Call your mom. Tell her she raised a winner.", "You won, but don't let it go to your head."].sample
    lose = ["Shoot, you lost.", "You lost. Bummer...", "Computer won, but he's open to a rematch."].sample

    choices = ["rock", "paper", "scissors"]
    @computer_move = choices.sample

    if @user_move == @computer_move
      @result = tie
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = win
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = win
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = win
    else
      @result = lose
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
