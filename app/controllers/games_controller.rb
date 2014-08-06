require 'page_interface'
require 'mastermind'

class GamesController < ApplicationController
  
  def new_game
  end
 
  def play
    code = params[:code][:code]
  
    io = IO.new(code)
    if(Mastermind::Validator.new(io.formatted_input, 4, %w{R G O Y B P}).valid?)
      game_text = Mastermind::GameText.new
      io = IO.new(code)
      @result=Game.new(game_text, io).play_game(io.formatted_input)
      @index = 0
      @display_text = io.messages
    else
      flash.now[:error] = "Invalid code"
      render 'new_game'
    end
  end

end
