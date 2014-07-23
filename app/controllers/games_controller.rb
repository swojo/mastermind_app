require_relative '../../lib/game_logic/page_interface'

class GamesController < ApplicationController
  
  def play
    code = params[:code]
    if code
      game_text = Mastermind::GameText.new
      io = IO.new(code)
      Mastermind::Game.new(game_text, io).play_game
      @display_text = io.messages
    end
  end

end
