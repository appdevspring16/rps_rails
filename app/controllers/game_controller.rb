class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    u_move = @user_move
    moves = ["rock", "paper", "scissors"]

      if u_move=="rock" || u_move=="paper" || u_move=="scissors"

        comp_move = moves.sample

        if u_move==comp_move
          res = "It's a tie!"

        elsif u_move=="rock" && comp_move=="paper"
          res =  "You lose!"

        elsif u_move=="rock" && comp_move=="scissors"
          res =  "You win!"

        elsif u_move=="paper" && comp_move=="rock"
          res =  "You win!"

        elsif u_move=="paper" && comp_move=="scissors"
          res =  "You lose!"

        elsif u_move=="scissors" && comp_move=="rock"
          res =  "You lose!"

        elsif u_move=="scissors" && comp_move=="paper"
          res =  "You win!"
        end

      else
        res = "That doesn't seem to be a valid move."

      end



    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = comp_move

    @result = res

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
