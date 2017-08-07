require "game"

class GamesController < ApplicationController

  def game
    @grid = generate_grid(10)
    @start_time = Time.now # Class: Date
  end

  def score
    @end_time = Time.now # Class: Date
    @jeu = params[:jeu]
    @grid = params[:grid].split("")
    @start_time = Time.parse(params[:start_time])
    @result = run_game(@jeu, @grid, @start_time, @end_time)
  end
end
