class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    puts "Welcome to Rock, Paper, Scissors!"

    puts "rock, paper, or scissors?"

    @user_move = gets.chomp

    puts "You chose #{@user_move}."

    @computer_move = ["rock", "paper", "scissors"].sample

    puts "The computer chose #{@computer_move}."

    if @user_move == computer_move
     puts @result"You tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
     puts @result"You win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
       puts @result"You lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
     @result"You lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
       puts @result"You win!"
    elsif @user_move == "rock" && @computer_move == "paper"
       puts @result"You lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
     puts @result = "You win!"
            render("rps.html.erb")

  end
end
