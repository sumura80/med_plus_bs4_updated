class PagesController < ApplicationController
  def about
  	render "pages/about"
  end

  def terms
  	render "pages/terms"
  end
end
