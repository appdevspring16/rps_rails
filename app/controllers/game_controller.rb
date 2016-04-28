class GameController < ApplicationController

  def rps
    @user_move = params[:the_move]
    # The move the user chose is in the variable @user_move.
    # In the end, make sure you assign the correct values to the following two variables:

    @computer_move = ["ROCK", "PAPER", "SCISSORS"].sample
    # @computer_move is used instead of "puts computer_move"
    # stuff with @ is called INSTANCE VARIABLE where we put some values, which is what the user will see in html

    # if @user_move =="rock" && @user_move =="paper" && @user_move =="scissors"
    # @result = "Replace this string with the correct value."
    #won, lost, or tie

# now write bunch of logic that determines various outcomes

    if @user_move.upcase == @computer_move
      @result = "tied :)"
      #  @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "rock" && @computer_move == "PAPER"
      @result = "lose"
      # @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "rock" && @computer_move == "SCISSORS"
      @result = "win!"
      # @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "paper" && @computer_move == "ROCK"
      @result = "win!"
      # @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "paper" && @computer_move == "SCISSORS"
      @result = "lose"
      # @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "scissors" && @computer_move == "ROCK"
      @result  = "lose"
      # @user_move = gets.chomp # game continues, user makes another move
    elsif @user_move == "scissors" && @computer_move == "PAPER"
      @result = "win!"
      # @user_move = gets.chomp # game continues, user makes another move
    end

    render("rps.html.erb")
  end
end
