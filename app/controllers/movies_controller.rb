class MoviesController < ApplicationController

  def index
  	@movies = Movie.all

  	# filter search request
  	if params[:character].present?
  		@movies = @movies.joins(:characters)
  		@movies = @movies.where(
  			'characters.name LIKE ?', "%#{params[:character]}%" )
  	end

  	if params[:movie].present?
  		@movies = @movies.where(
  			'movies.name LIKE ?', "%#{params[:movie]}%" )
  	end
  	# tables are always plural: movies, characters

  	@movies = @movies.joins(:characters).order("year DESC").uniq
  end

  def show
  	@movie = Movie.find(params[:id])
  end

end

