require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do

  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else @comp_move == "scissors"
    @outcome = "won"
  end

  erb(:rock)
end

get("/paper") do
  erb(:paper)
end

get("/scissors") do
  erb(:scissors)
end
