class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include ActionController::MimeResponds

  def catch_all
    response = { :status => 400, :content => "Bad Request" }
    render json: response
  end

end
