
class Drive
  attr_reader :play
  
  def initialize
    @play
  end
  
  def play_call
    @play = rand(1..10)
  end
end

if __FILE__ == $0
  team = Drive.new
  puts team.play_call
  
end