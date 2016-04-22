class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    @moves = [ "rock", "paper", "scissors" ]

    # generate random computer move
    @comp_move = @moves.sample
    # puts "Computer chose #{comp_move}\n"

    # rock beats scissors
    # scissors beats paper
    # paper beats rock

    if ( @user_move == @comp_move )
      @result = "Tie"
    elsif ( (@user_move=="paper") && (@comp_move=="rock") )
      @result = "Won"
      # Shows logical OR || usage
    elsif ( ( (@user_move=="scissors") && (@comp_move=="paper") ) || ( (@user_move=="rock") && (@comp_move=="scissors") ) )
      @result = "Won"
    else
      # all other combinations are loss
      @result = "Lost"
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @user_move = @user_move.capitalize
    @computer_move = @comp_move.capitalize

    # @result = "won"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
