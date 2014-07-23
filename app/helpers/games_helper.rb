module GamesHelper
  class Terminal
    def initialize input
      @input = input
      @display_text = "HI"
    end

    def display(message)
    end
    
    def formatted_input
      @input.upcase.split(%r{\s*})
    end
  end
end
