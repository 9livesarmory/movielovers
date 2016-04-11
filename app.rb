require 'sinatra'
require "imdb"
require_relative "model/moviesearch.rb"



get "/" do
    erb :home
end


post "/movie_search" do
	moviesearch=Moviesearch.new
	@newsearch_array=moviesearch.collectmovies(params[:keyword])
	@randomdate=moviesearch.randomize_date
	
	erb :moviesearch
end
