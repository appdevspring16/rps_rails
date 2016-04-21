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

    @computer_move = ['rock', 'paper', 'scissors'].sample

    @result =

    if @user_move == @computer_move
      "tied"

    elsif @user_move == 'rock' && @computer_move == 'scissors'
      "win"

    elsif @user_move == 'rock' && @computer_move == 'paper'
      "lose"

    elsif @user_move == 'scissors' && @computer_move == 'paper'
      "win"

    elsif @user_move == 'scissors' && @computer_move == 'rock'
      "lose"

    elsif @user_move == 'paper' && @computer_move == 'rock'
      "win"

    elsif @user_move == 'paper' && @computer_move == 'scissors'
      "lose"

    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
