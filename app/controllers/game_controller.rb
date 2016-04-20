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

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @user_move == @computer_move
      @result= "tied"
    elsif @user_move == "Rock" && @computer_move == "Paper"
      @result= "lost"
    elsif @user_move == "Rock" && @computer_move == "Scissors"
      @result= "won"
    elsif @user_move == "Paper" && @computer_move == "Rock"
      @result= "won"
    elsif @user_move == "Paper" && @computer_move == "Scissors"
      @result= "lost"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
      @result= "lost"
    elsif @user_move == "Scissors" && @computer_move == "Paper"
      @result= "won"



    @result= ["won"]

    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
