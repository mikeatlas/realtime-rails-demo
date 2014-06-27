class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  realtime_controller

  after_filter :do_realtime_token_hi

  def do_realtime_token_hi
  	# cookies["_rtToken"] = { :value => @realtime_token, :domain => ".#{realtime_domain}" }
  	# cookies["_rtUserId"] = { :value => realtime_user_id, :domain => ".#{realtime_domain}" }
  end


  def realtime_user_id
  	return 42
  end

  def realtime_domain
  	return 'herokuapp.com'
  end

  def realtime_server_url
  	return 'http://realtime-server-demo.herokuapp.com'
  end

end
