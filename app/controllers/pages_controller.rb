class PagesController < ApplicationController
  def home
  end

  def about
    @members = ["nour", "audric", "jonathan", "barthelemy", "baptiste"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def contact
  end
end
