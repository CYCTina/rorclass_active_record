class MoviesController < ApplicationController

  def index
  	@movies = Movie.all

  	# filter search request
  	if params[:character].present?
  		@movies = @movies.joins(:characters)
  		@movies = @movies.where(
  			characters: {name: params[:character]})
  	end

  	if params[:movie].present?
  		@movies = @movies.where(
  			name: params[:movie])
  	end

  	@movies = @movies.joins(:characters).order("year DESC")

  end

  def show
  	@movie = Movie.find(params[:id])
  end

end

