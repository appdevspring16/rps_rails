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
    # Rock, Paper, Scissors

        @computer_move = @cpu_move



    puts "Welcome to Rock, Paper, Scissors!"
    @user_wins=0
    @cpu_wins=0
    moves=["rock", "paper", "scissors"]
    #puts moves
    @cpu_move=moves.sample

    if @user_move == @cpu_move
      @result = "TIED - You both chose #{@user_move}"
      #@result = @result + "You have won #{@user_wins} times, the CPU has won #{@cpu_wins} times"
    elsif @user_move == "paper" && @cpu_move=="rock" || @user_move == "rock" && @cpu_move == "scissors" || @user_move == "scissors" && @cpu_move == "paper"
      @user_wins=@user_wins+1
      @result = "YOU WON!"
      # You have won #{@user_wins} times, the CPU has won #{@cpu_wins} times"

    elsif @cpu_move == "paper" && @user_move=="rock" || @cpu_move == "rock" && @user_move == "scissors" || @cpu_move == "scissors" && @user_move == "paper"
      @cpu_wins=@cpu_wins+1
      @result = "YOU LOST!" #You have won #{@user_wins} times, the CPU has won #{@cpu_wins} times"



    else
      puts "please select rock, paper, or scissors"
    end




    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
