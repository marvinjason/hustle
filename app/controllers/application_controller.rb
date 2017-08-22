class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def resolve_layout
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
