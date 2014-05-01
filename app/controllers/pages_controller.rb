class PagesController < ApplicationController
  def home
  	@events = Event.limit(5)
  end

  def staff
  	@staff_members = StaffMember.all
  end
end
