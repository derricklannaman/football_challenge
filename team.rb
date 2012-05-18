require_relative 'game'

class Team
  attr_accessor :name, :score, :o_rank, :d_rank

  def initialize(name, score=0, o_rank=0, d_rank=0)
    @name         = name.capitalize
    @score        = score
    @o_rank       = o_rank
    @d_rank       = d_rank
  end

  def touch_down(points=7)
    @score += 7
    @o_rank += 25
    "\tThe #{@name} score a touch down for #{points} points."
  end

  def field_goal(points=3)
    @score += 3
    @o_rank += 15
    "\t#{@name} kick a field goal for #{points} points"
  end
  
  def move_chains(name=@name)
    @o_rank += 10
    "\tThe #{name} moved the chains for first downs"    
  end
  

  def fumble
    @o_rank -= 15
    "\tThe #{@name} fumbled the ball"
    end
  
  def turn_over_on_downs
    @o_rank -= 5
    "\tThe #{@name} turn the ball over on downs"
  end
  
  def pick
    @o_rank -= 10
    "\tThe #{@name} throw an interception!"
  end
  
  def offensive_stats
    puts "The #{@name} have an offense rating of #{@o_rank}"
    
    case @o_rank 
      when  (160..1000) 
        puts "The #{@name} offense was Unstoppable! Near perfection!"
      when  (120..159)
        puts "An incredible performance by the #{@name} offense"  
      when  (86..119) 
        puts "The #{@name} offense was solid at times"
      when  (50..85)
        puts "Luke warm performance by the #{@name} offense"  
      when  (20..49) 
        puts "Too many mistakes! The #{@name} offense has to play better"
      else
        puts "What an embarrasing display by the #{@name} offense."      
    end
  end
  
 
  def total_points
    @score 
  end
  
  def final_score
  end
  
  def game_summary
    #final o_rank
    #final d_rank
    #number of possessions
    #points per quarter
  end
  

end


if __FILE__ == $0
  team = Team.new("giants")
  puts team.touch_down
  puts team.field_goal
  puts team.turn_over_on_downs
  puts team.fumble
  puts team.pick 
  puts team.offensive_stats
  
end

