require 'spec_helper'

describe ColorsController do

  describe "GET 'index'" do
    it "returns color" do
      get :index, format: :json
      response.should be_success
    end
  end

end
