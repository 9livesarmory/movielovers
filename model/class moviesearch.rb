class Moviesearch

	attr_accessor :title_array

	def initialize(title)
		@title=title
		@title_array=[]
	end


	def collectmovies
		search=Imdb::Search.new(@title)

		search.movies.each do |i|
			if search.movies[0].rating
			search.movies[0]
			else
			search.movies[8]
			end
		end
	end
end

