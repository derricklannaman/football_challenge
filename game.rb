require_relative 'team'
require_relative 'drive'

class Game
  attr_accessor :title, :name
  def initialize(title)
    @title = title
    @teams = []
  end

  def add_opponents(a_team)
    @teams << a_team    
  end
  
  def line_break #adds line for readability
    puts "======================" 
  end
  
  def score_board
    line_break
    @teams.each do |team_name|
     puts "\t#{team_name.name.ljust(15, '.')} #{team_name.score}"
    end
     line_break
  end
  
  def play(possessions)
     puts "Welcome to the #{title} game between the #{@teams[0].name} vs the #{@teams[1].name}" 
     score_board     
      
      1.upto(4) do |periods|
        puts "#{periods} Quarter Game Summary:\n\n"
        @teams.each do |team|
            1.upto(possessions) do |count|#determines number of scoring possessions 
             drive = Drive.new
             case drive.play_call
               when 1, 2 
                 puts "Possession #:#{count}#{team.move_chains}"
               when 3, 4 
                 puts "Possession #:#{count}#{team.turn_over_on_downs}"
               when 5, 6
                 puts "Possession #:#{count}#{team.touch_down}"
               when 7, 8
                 puts "Possession #:#{count}#{team.field_goal}"
               when 9
                 puts "Possession #:#{count}#{team.pick}"
               else
                 puts "Possession #:#{count}#{team.fumble}" 
               end #end case
              end #end upto for possessions 
          end #end each.do
      score_board
      end
    end#end upto
  end

#functional sample code 
if __FILE__ == $0
  team1 = Team.new("giants")
  team2 = Team.new("cowboys")
  week_1 = Game.new("Week 1")

  week_1.add_opponents(team1)
  week_1.add_opponents(team2)
  week_1.play(2)
  puts team1.offensive_stats
  puts team2.offensive_stats 
end
  
  
  
