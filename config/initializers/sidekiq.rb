require 'sidekiq'
require 'sidekiq/api'

# Clear any enqueued jobs
Sidekiq::ScheduledSet.new.clear

# Start up a new worker
ColorWorker.perform_in(3.seconds)

Sidekiq.configure_server do |config|
  config.poll_interval = 3
end
