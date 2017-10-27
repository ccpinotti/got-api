require 'rails_helper'

describe HousesController do
  describe '#index' do
    it "returns a 200 status code" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe '#destroy' do
    it 'should delete a record' do
      @house = House.create()
      delete :destroy, params: { id: @house.id }
      expect(House.count).to eql(0)
    end
  end
end
