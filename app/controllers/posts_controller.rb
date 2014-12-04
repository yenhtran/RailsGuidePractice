class PostsController < ApplicationController

	def new 
	end

	def create 
		# render text: params[:post].inspect -> USED TO RENDER HTML TEXT TO PAGE

		@post = Post.new(params[:post_params])
		@post.save
		redirect_to @post
	end

	private
		def post_params
			params.require(:post).permit(:title, :text)
		end
end
