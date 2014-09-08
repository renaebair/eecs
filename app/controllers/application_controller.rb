class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :find_parent_quotes

  def find_parent_quotes
    @quotes = ParentQuote.all.shuffle[0..1] rescue []
  end
end
