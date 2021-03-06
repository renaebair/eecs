class PagesController < ApplicationController
  before_filter :find_staff_circles
  before_filter :find_staff

  def home
  	@events = Event.published.all
  end

  def news
    @articles = Article.all
  end

  def find_staff
    @staff_members = AdminUser.staff.order('last_name ASC')
  end

  def find_staff_circles
  	@staff_member_circles = AdminUser.all.shuffle[0..5]
  end

  def announcements
    @events = Event.all.order('created_at DESC')
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/volunteers.pdf",
      filename: "volunteers.pdf",
      type: "application/pdf"
    )
  end
end
