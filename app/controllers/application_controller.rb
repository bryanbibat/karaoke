class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def valid_initial
    params[:initial].length == 1 && params[:initial] >= "A" && params[:initial] <= "Z"
  end


  def j_karaoke_invite
    flash[:notice] = "We've started a karaoke group for people interested in singing Japanese songs! Join us at <a href='http://www.meetup.com/J-Karaoke-Manila/'>http://www.meetup.com/J-Karaoke-Manila/</a>.".html_safe
  end
end
