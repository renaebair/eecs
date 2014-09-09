class PagesController < ApplicationController
  before_filter :find_staff_circles
  before_filter :find_staff

  def home
  	@events = Event.published.limit(5)
  end

  def news
    @articles = Article.all
  end

  def find_staff
    @staff_members = StaffMember.all.order('last_name ASC')
  end

  def find_staff_circles
  	@staff_member_circles = StaffMember.all.shuffle[0..5]
  end

  def announcements
    @announcements = Event.all
  end
end
