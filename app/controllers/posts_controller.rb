class PostsController < ApplicationController
  before_filter :find_staff_member

	def index
		@posts = @user ? @user.posts.all : Post.all
	end

	def show
		@posts = Post.find(params[:id])
	end

  def find_staff_member
    @user = AdminUser.find(params[:staff_member_id])
  rescue
    @user = nil
  end
end
