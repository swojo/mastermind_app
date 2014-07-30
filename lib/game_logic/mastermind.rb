class Game
  DEFAULT_COLORS = %w{R G O Y B P}

  def initialize(game_text, terminal)
    @game_text = game_text
    @terminal = terminal
    @code_length =4
  end

  def play_game(code)
     colors = DEFAULT_COLORS
     set_up_board(code, colors)
     result = run_ai_player(colors)
     end_of_game(result)
  end

  private

    def set_up_board(code, colors)
      @board = Mastermind::GameStatus.new(code, colors)
    end

    def run_ai_player(colors)
      algorithm = Mastermind::NaiveAlgorithm.new(colors)
      player = Mastermind::AIPlayer.new(@board, algorithm)
      result = player.solve
      print_guess(result)
      until @board.end_of_game?(result)
        result = player.solve
        print_guess(result)
      end
      result
    end

    def print_guess(result)
      @terminal.display(@game_text.message(:guess, result))
    end
      
    def end_of_game(result)
      if(result.correct?)
        @terminal.display(@game_text.message(:win, result))
      else
        @terminal.display(@game_text.message(:lose, result))
      end
    end
end
