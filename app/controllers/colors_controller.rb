class ColorsController < ApplicationController

  def index
    respond_to do |format|
      format.html do

      end
      format.json do
        color = redis.lpop(ColorWorker::COLOR_QUEUE)
        if color
          render json: {
            color: JSON.parse(color)
          }
        else
          render json: {}
        end
      end
    end
  end
end
