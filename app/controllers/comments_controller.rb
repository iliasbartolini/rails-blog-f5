class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create! comments_params
    redirect_to @post
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def comments_params
      params.required(:comment).permit(:body)
    end
end
