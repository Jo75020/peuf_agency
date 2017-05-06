class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :maintenance, :contact ]

  def home
    @info = Info.new
  end



  def maintenance
  end
end
