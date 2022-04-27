class ApplicationController < ActionController::Base
skip_before_action :verify_authenticity_token

  private

  def logged_in
  end

end