threads Integer(ENV['MIN_THREADS']  || 8), Integer(ENV['MAX_THREADS'] || 12)

workers Integer(ENV['PUMA_WORKERS'] || 2)

rackup DefaultRackup
port ENV['PORT'] || 3000
environment ENV['RACK_ENV'] || 'development'
preload_app!

on_worker_boot do
  # worker specific setup
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
