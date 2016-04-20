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

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == @user_move
        @result = "tied!"
    elsif  @user_move =="rock"
      if @computer_move=="paper"
        @result = "lost!"
      else
        @result = "won!"
      end
    elsif  @user_move =="paper"
      if @computer_move=="scissors"
        @result = "lost!"
      else
        @result = "won!"
      end
    elsif  @user_move =="scissors"
      if @computer_move=="rock"
        @result = "lost!"
      else
        @result = "won!"
      end
    end
    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
