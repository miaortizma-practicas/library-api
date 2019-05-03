class AuthorsController < ApplicationController
	def index
		render json: Author.all
	end 

	def create
		author = Author.new(author_params)
		if author
			render json: author, status: 201
		else
			render json: author.errors, status: :unprocessable_entity
		end

	end

	private
		def author_params
			params.require(:author).permit(:name)
		end 

end
