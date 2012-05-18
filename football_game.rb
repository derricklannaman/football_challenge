#This file runs the game

require_relative 'team'
require_relative 'game'
require_relative 'drive'
require_relative 'offensive_plays'
  
team1 = Team.new("giants")
team2 = Team.new("cowboys")
team3 = Team.new("eagles")
team4 = Team.new("redskin")


playoff = Game.new("Playoff")
playoff.add_opponents(team1)
playoff.add_opponents(team2)

playoff.play(2)
puts team1.offensive_stats
puts team2.offensive_stats



















