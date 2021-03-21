# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.delete_all
WEEKS = 16
YEAR = 2021
SEASONS = 4

def generate_season(year)
    WEEKS.times do |week|
        team_ids = Team.pluck(:id)
        generate_week(team_ids, week, year)
        
    end
end

def generate_week(ids,week, year)
    until ids.size < 1 do
        team_a = ids.delete_at(rand(ids.size))
        team_b = ids.delete_at(rand(ids.size))
        
        Game.create(home_team_id: team_a, away_team_id: team_b, week: (week + 1), season: year)
        puts "Game created!"
    end
    puts "Week created!!!!!!!!!!!!!"
end

SEASONS.times do |i|
    current_year = YEAR + i
    generate_season(current_year)
    puts "Season created!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
end