class StaticPagesController < ApplicationController
  def home
  	@check = Check.new
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def contact
  end

  def about
  end
end
