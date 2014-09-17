class PostsController < ApplicationController
  before_filter :find_user

	def index
		@posts = @user ? @user.posts.all : Post.all
	end

	def show
		@posts = Post.find(params[:id])
	end

  def find_user
    @user = AdminUser.find(params[:admin_user_id])
  rescue
    @user = nil
  end

end
