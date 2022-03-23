class ApplicationController < ActionController::Base
  before_action :set_csrf_cookie

  private

  def logged_in
  end

  def set_csrf_cookie
    cookies["CSRF-TOKEN"] = {
      value: form_authenticity_token,
      secure: true
    }
  end
end
