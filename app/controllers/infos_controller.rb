class InfosController < ApplicationController
skip_before_action :authenticate_user!
  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to root_path
    else
      redirect_to request.referer
    end

  end
private

  def set_info
      @info = info.find(params[:id])
  end

  def info_params
    params.require(:info).permit(:first_name, :last_name, :email, :phone, :company_name, :description)
  end

end
