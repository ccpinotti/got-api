require 'rails_helper'

describe CharactersController do
  describe '#index' do
    it "returns a 200 status code" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe '#destroy' do
    it 'should delete a record' do
      @character = Character.create()
      delete :destroy, params: { id: @character.id }
      expect(Character.count).to eql(0)
    end
  end
end
