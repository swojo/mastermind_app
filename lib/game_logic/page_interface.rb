class IO
  def initialize input
    @input = input
    @messages ||= []
  end

  def display(message)
    @messages << message
  end

  def messages
    @messages 
  end
  
  def formatted_input
    @input.upcase.split(%r{\s*})
  end
end

