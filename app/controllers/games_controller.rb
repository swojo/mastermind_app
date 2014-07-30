require 'page_interface'
require 'mastermind'

class GamesController < ApplicationController
  
  def new_game
  end
 
  def play
    code = "RRRR"
#    code = params[:code][:code]
 #   index = params[:index]
  
    io = IO.new(code)
#    if(index.present?)
#      @index = index + 1
    if(Mastermind::Validator.new(io.formatted_input, 4, %w{R G O Y B P}).valid?)
      game_text = Mastermind::GameText.new
      io = IO.new(code)
      Game.new(game_text, io).play_game(io.formatted_input)
      @index = 0
      @display_text = io.messages
    else
      flash.now[:error] = "Invalid code"
      render 'new_game'
    end
  end

end
