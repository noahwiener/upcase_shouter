class ShoutsController < ApplicationController

  def create
    content = build_content
    shout = current_user.shouts.build(content: content)
    if shout.save
      redirect_to dashboard_path
    else
      flash.alert = "could not shout"
      redirect_to dashboard_path
    end
  end
  
  def show
    @shout = Shout.find(params[:id])
  end

end
