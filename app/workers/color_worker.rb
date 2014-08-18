class ColorWorker
  include Sidekiq::Worker

  COLOR_QUEUE="colors"

  def perform
    random_color = [random_number, random_number, random_number]
    Redis.new.lpush(COLOR_QUEUE, random_color.to_json)
    ColorWorker.perform_at(3.seconds.from_now)
  end

  private

  def random_number
    ((rand * 100000)%255).to_i
  end
end
