require 'spec_helper'

describe ColorsController, type: :controller do

  describe "GET 'index'" do
    it "returns color" do

      redis = {}
      rgb = [123,321,123]
      expect(redis).to receive(:lpop).with(ColorWorker::COLOR_QUEUE).and_return(rgb.to_json)
      expect(controller).to receive(:redis).and_return(redis)

      get :index, format: :json
      res = response.body
      json = JSON.parse(res)

      expect(json["color"]).to eq rgb
    end
  end

end
