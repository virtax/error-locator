class HomeController < ApplicationController
  protect_from_forgery

  def index
    raise 'sample error'
  end

end