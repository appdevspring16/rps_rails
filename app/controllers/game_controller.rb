class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    u_move = @user_move

    moves = ["rock", "paper", "scissors"]
    comp_move = moves.sample

    if u_move==comp_move
      res = "tied"

    elsif u_move=="rock" && comp_move=="paper"
      res = "lost"

    elsif u_move=="rock" && comp_move=="scissors"
      res = "won"

    elsif u_move=="paper" && comp_move=="rock"
      res = "won"

    elsif u_move=="paper" && comp_move=="scissors"
      res = "lost"

    elsif u_move=="scissors" && comp_move=="rock"
      res = "lost"

    elsif u_move=="scissors" && comp_move=="paper"
      res = "won"
    end


    @computer_move = comp_move

    @result = res

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
