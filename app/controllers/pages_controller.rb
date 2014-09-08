class PagesController < ApplicationController
  before_filter :find_staff

  def home
  	@events = Event.limit(5)
  end

  def news
    @articles = Article.all
  end

  def find_staff
  	@staff_members = StaffMember.all.shuffle[0..5]
  end

  def announcements
    @announcements = Event.all
  end
end
