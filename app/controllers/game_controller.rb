class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    options = ["rock", "paper", "scissors"]
    @computer_move = options.sample
    if @user_move == @computer_move
      @result = "tied!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
    end
    # In the end, make sure you assign the correct values to the
    # following two variables:
    
    # In the end, make sure you assign the correct values to the
    #   following two variables:

    # if user_move == comp_move
    #   puts "It's a tie!"
    # end
    #
    # if user_move == "rock" && comp_move == "paper"
    #   puts "You lose!"
    # end
    #
    # if user_move == "rock" && comp_move == "scissors"
    #   puts "You win!"
    # end
    #
    # if user_move == "paper" && comp_move == "rock"
    #   puts "You win!"
    # end
    #
    # if user_move == "paper" && comp_move == "scissors"
    #   puts "You lose!"
    # end
    #
    # if user_move == "scissors" && comp_move == "rock"
    #   puts "You lose!"
    # end
    #
    # if user_move == "scissors" && comp_move == "paper"
    #   puts "You win!"
    # end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
