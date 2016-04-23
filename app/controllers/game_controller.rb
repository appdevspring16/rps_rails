class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
   
    puts 'You chose #{user_move}'
    computer_move= ["rock", "paper", "scissors"].sample
    puts "The computer chose #{computer_move}"

    if @user_move == @computer_move #computer move = player move, result = tie
        @result= "You tied!" 
    elsif @user_move == "rock" && @computer_move== "paper" # player move = rock & computer move = paper
        @result= "Computer wins!" # result = computer wins 
    elsif @user_move == "rock" && @computer_move== "scissors" # player move = rock & computer move = scissors
          @result= "You win!" # result = player wins
    elsif @user_move == "paper" && @computer_move== "rock"#player move = paper & computer move = rock
          @result= "Computer wins!" #result 
    elsif @user_move == "paper" && @computer_move== "scissors" #player move = paper 
          @result= "Computer wins!" #result 
    elsif @user_move == "scissors" && @computer_move== "rock" #player move = scissors
          @result= "Computer wins!" #result 
    elsif @user_move == "scissors" && @computer_move== "paper" #player move = scissors
          @result= "You win!" #result      
        
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = "rock."

    @result = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
end
  end
