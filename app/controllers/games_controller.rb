class GamesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_error
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_error

  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    game = Game.create!(game_params)
    render json: game, status: :created
  end

  def update
    game = Game.find(params[:id])
    game.update!(game_params)
    render json: game
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy
    head :no_content
  end

private

  def game_params
    params.permit(:title, :year, :developer, :cover_art_url)
  end

  def render_not_found_error
    render json: { errors: "Game not found" }, status: :not_found
  end

  def render_unprocessable_entity_error(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
end
