require 'rails_helper'

describe CharactersController do
  describe '#index' do
    it "returns a 200 status code" do
      get 'index'
      expect(response).to be_success
    end
  end
end
