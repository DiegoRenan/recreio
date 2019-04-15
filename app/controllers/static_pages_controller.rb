class StaticPagesController < ApplicationController
  def home
  	@check = Check.new
  end

  def contact
  end

  def about
  end
end
