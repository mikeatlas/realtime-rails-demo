class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  realtime_controller

  def realtime_user_id
  	return 42
  end

  def realtime_server_url
  	
  	if Rails.env.development?
  		return 'http://local.mikeatlas.com:5001'
  	end

  	return 'http://realtime-server-demo.herokuapp.com'
  end

end
