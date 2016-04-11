class Movie

	attr_accessor :title_array

	def initialize
		@title_array=[]
	end


	search=Imdb::Search.new()


end

