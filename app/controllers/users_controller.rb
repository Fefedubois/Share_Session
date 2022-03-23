class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token
  def edit
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    favoris = Favori.where(user_id: current_user.id).order(created_at: :desc).pluck(:post_id)
    @favoris = Post.find(favoris)
  end
end
