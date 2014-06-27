threads ENV['PUMA_MIN_THREADS'] || 8, ENV['PUMA_MAX_THREADS'] || 16
workers ENV['PUMA_WORKERS'] || 1
preload_app!

on_worker_boot do

  ActiveSupport.on_load(:active_record) do
  	config = Rails.application.config.database_configuration[Rails.env]
    config['reaping_frequency'] = ENV['DB_REAP_FREQ'] || 10 # seconds
    config['pool']              = ENV['DB_POOL'] || 16
    ActiveRecord::Base.establish_connection(config)
  end
end