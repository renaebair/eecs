class PagesController < ApplicationController
  before_filter :find_staff

  def home
  	@events = Event.limit(5)
  end

  def news
    @articles = Article.all
  end

  def find_staff
  	@staff_members = StaffMember.limit(6)
  end
end
