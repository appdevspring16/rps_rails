class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    if @user_move == @computer_move
      @computer_move = ["rock", "paper", "scissors"].sample
      @result = ["You tied"]

    elsif @user_move == "paper" && @computer_move == "rock"
      @computer_move = ["rock", "paper", "scissors"].sample

      @result = ["You lose"]

    elsif @user_move == "paper" && @computer_move == "scissors"
      @computer_move = ["rock", "paper", "scissors"].sample

      @result = ["You lose"]

    elsif @user_move == "scissors" && @computer_move == "rock"
      @computer_move = ["rock", "paper", "scissors"].sample

      @result = ["You lose"]

    elsif @user_move == "scissors" && @computer_move == "paper"
      p  @computer_move = ["rock", "paper", "scissors"].sample

        @result = ["You win"]

    elsif @user_move == "rock" && @computer_move == "paper"
      p  @computer_move = ["rock", "paper", "scissors"].sample

        @result = ["You lose"]

    elsif @user_move == "rock" && @computer_move == "scissors"
      @computer_move = ["rock", "paper", "scissors"].sample

      @result = ["You win"]

    end
    # In the end, make sure you assign the correct values to the
    #   following two variables:


    @computer_move = ["rock", "paper", "scissors"].sample

    @result = [result]

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
