Rails.application.routes.draw do
  root :to => "visitors#index"
  match "trigger_realtime_message", to: 'visitors#trigger_realtime_message', via: 'get'
end
