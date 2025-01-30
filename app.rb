require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

moves = ["rock", "paper", "scissors"]

get("/rock") do

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
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else @comp_move == "scissors"
    @outcome = "lost"
  end

  erb(:paper)
end

get("/scissors") do
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else @comp_move == "scissors"
    @outcome = "tied"
  end

  erb(:scissors)
end
