class CommentsController < ApplicationController
  def create
  	@post =Post.find(params[:post_id])
  	@comment=@post.comments.build(params[:comment])


    @comment.user_id = session[:user_id]
  	@comment.save

  	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end
end
