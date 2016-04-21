class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    puts "You chose #{@user_move} !"
    rps = ["rock", "paper", "scissors"]
    @computer_move=rps.sample
    puts "I chose #{@computer_move} !"

    if @computer_move == @user_move
      # puts "I also chose #{@user_move}. We tied!"
      @result = "tie"
      # elsif @user_move!= "rock" && @user_move!= "paper"  && @user_move != "scissors"
      #   puts "That doesn\'t seem to be a valid move. Please enter rock, paper or scissors"
      #   move=gets.chomp.downcase
    elsif @computer_move == "scissors" && @user_move == "rock"
      # puts "I chose "+computer_move+". You win!"
      @result = "win!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      # puts "I chose "+computer_move+".I win!"
      @result = "lost!"
    elsif @computer_move == "rock" && @user_move =="paper"
      # puts "I chose "+computer_move+".You win!"
      @result = "win!"
    elsif @computer_move == "scissors" && @user_move == "paper"
      # puts "I chose "+computer_move+".I win!"
      @result = "lost!"
    elsif @computer_move == "paper" && @user_move == "scissors"
      # puts "I chose "+computer_move+".You win!"
      @result = "win!"
    elsif @computer_move == "paper" && @user_move == "rock"
      # puts "I chose #{@computer_move}, I win!"
      @result = "lost!"
    end
    puts " "

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    # @computer_move = "Replace this string with the correct value."

    # @result = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
