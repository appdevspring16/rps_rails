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

    choices = ["Rock", "Paper", "Scissors"]

    while choices.include?(@user_move.downcase.capitalize) == false
      puts "That doesn\'t seem like a valid move."
      puts "Pick again!"
      break
    end

    @computer_move = choices.sample

    puts  'Computer has picked ' + @computer_move

    if @user_move.downcase.capitalize == @computer_move

      @result = ["Its a Tie!"]
      puts  ""
      puts "Pick again!"

    elsif @user_move.downcase.capitalize == "Rock" && @computer_move == "Scissors"
      @result = ["You Win!"]
      puts  ""
      puts "Pick again!"

    elsif @user_move.downcase.capitalize == "Scissors" && @computer_move == "Paper"
      @result = ["You Win!"]
      puts  ""
      puts "Pick again!"

    elsif @user_move.downcase.capitalize == "Paper" && @computer_move == "Rock"
      @result = ["You Win!"]
      puts  ""
      puts "Pick again!"

    else
      @result = ["You Lose!"]

      puts  ""
      puts "Pick again!"

    
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
