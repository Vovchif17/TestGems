require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:user) { create(:user) }

  describe "GET #show" do
    it "is successful" do
      sign_in user
      get "/users"

      expect(response).to be_successful
    end
  end
end
