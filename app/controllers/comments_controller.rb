class CommentsController < ApplicationController
  before_action :set_post,

  def create
    @post.comments.create! params.require(:comment).permit(:content)
    redirect_to @post
    # @post = Post.find(params[:post_id])
    # @comment = @post.comments.build(comment_params)
    
    # if @comment.save
    #   redirect_to @post, notice: 'Comment was successfully created.'
    # else
    #   redirect_to @post, alert: 'Failed to add comment.'
    # end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

end
