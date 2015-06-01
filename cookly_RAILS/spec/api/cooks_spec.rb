require 'rails_helper'


RSpec.describe "Cooks API" do

  describe "GET request to api/cooks" do
    before do
      FactoryGirl.create_list(:cook, 5)
      get "/api/cooks"
    end

    it "responds with a 200 status code" do
      expect(response).to have_http_status 200
    end

    it "returns a list of cooks" do
      cooks = JSON.parse(response.body)
      expect(cooks.count).to eq(5)
    end

  end

end #end describe Cooks API