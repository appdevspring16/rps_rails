class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
