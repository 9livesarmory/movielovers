class Moviesearch

	attr_accessor :movies_array

	def initialize
		@movies_array=[]
	end


	def collectmovies(searchterm)
		search=Imdb::Search.new(searchterm)
		#until @title_array.length < 9 do
			search.movies[0..25].each do |i|
				if i.poster!=nil && @movies_array.length < 9
					@movies_array.push(i) 
				end
			end
		@movies_array
	end

	def randomize_date
		random_index=rand(0..8).round
		@movies_array[random_index].year
	end
end

	