class GameController < ApplicationController
  def rps

    @user_move = params[:the_move]

    game_status = ""
    computer_actions = ["rock","paper","scissors"]
    @computer_move = computer_actions.sample

    # User chooses rock
    if @user_move == "rock"
      if @computer_move == "rock"
        game_status = "tie"
      elsif @computer_move == "paper"
        game_status = "lose"
      elsif @computer_move == "scissors"
        game_status = "win"
      end

    # User chooses paper
    elsif @user_move == "paper"
      if @computer_move == "rock"
        game_status = "win"
      elsif @computer_move == "paper"
        game_status = "tie"
      elsif @computer_move == "scissors"
        game_status = "lose"
      end

    # User chooses scissors
    elsif @user_move == "scissors"
      if @computer_move == "rock"
        game_status = "lose"
      elsif @computer_move == "paper"
        game_status = "win"
      elsif @computer_move == "scissors"
        game_status = "tie"
      end
    end

    @result = game_status

    render("rps.html.erb")
  end
end
