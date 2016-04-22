class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
  @computer_move=["rock", "paper", "scissors"].sample

    if @user_move==@computer_move
      @result = "It's a tie!"
    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "You Lose!"
    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "You Win!"
    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "You Lose!"
    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "You Win!"
    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "You Lose!"
    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "You Win!"
    else
      @result = "Illegal Move"
    end


    # In the end, make sure you assign the correct values to the
    #   following two variables:
    #
    # @computer_move=["rock", "paper", "scissors"].sample
    #


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
