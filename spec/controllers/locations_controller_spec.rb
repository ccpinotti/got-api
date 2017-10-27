require 'rails_helper'

describe LocationsController do
  describe '#index' do
    it "returns a 200 status code" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe '#destroy' do
    it 'should delete a record' do
      @location = Location.create()
      delete :destroy, params: { id: @location.id }
      expect(Location.count).to eql(0)
    end
  end
end
