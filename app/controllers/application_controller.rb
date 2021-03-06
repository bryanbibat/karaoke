class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  private

  def valid_initial
    params[:initial].length == 1 && params[:initial] >= "A" && params[:initial] <= "Z"
  end

  def j_karaoke_invite
    flash.now[:warning] = "This site has been deprecated. <a href='https://www.awitotaku.com/'>Proceed to Awit Otaku</a>".html_safe
    flash.now[:info] = "Join our Japanese Karaoke Facebook group! <a href='https://www.facebook.com/groups/JKaraokePH/'>Sign up here</a>".html_safe
  end
end
