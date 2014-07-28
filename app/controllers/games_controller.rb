require_relative '../../lib/game_logic/page_interface'

class GamesController < ApplicationController
  
  def new_game
  end
 
  def play
    code = params[:code][:code]
    io = IO.new(code)
    if(Mastermind::Validator.new(io.formatted_input, 4, %w{R G O Y B P}).valid?)
      game_text = Mastermind::GameText.new
      io = IO.new(code)
      Mastermind::Game.new(game_text, io).play_game
      @display_text = io.messages
    else
      render 'new_game'
    end
  end

end
