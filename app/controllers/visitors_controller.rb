class VisitorsController < ApplicationController

	def trigger_realtime_message
		$redis.publish 'realtime_msg', {msg: 'hello world - ' + SecureRandom.hex, recipient_user_ids: [41, 42]}.to_json
		head :no_content
	end

end
