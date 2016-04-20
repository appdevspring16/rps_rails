class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    @computer_move = ["rock", "paper", "scissors"].sample

    @result =
    if @computer_move==@user_move
      "tied!"
    elsif @user_move=="rock" && @computer_move=="paper"
      "lost!"
    elsif @user_move=="rock" && @computer_move=="scissors"
      "won!"
    elsif @user_move=="paper" && @computer_move=="rock"
      "won!"
    elsif @user_move=="paper" && @computer_move=="scissors"
      "lost!"
    elsif @user_move=="scissors" && @computer_move=="rock"
      "lost!"
      elseif @user_move=="scissors" && @computer_move=="paper"
      "won!"
    end

    render("rps.html.erb")
  end
end
