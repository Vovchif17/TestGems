require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/help"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/contact"
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "Check validlinks" do
    it("layout links") do
      get(root_path)
      assert_template("static_pages/home")
      assert_select("a[href=?]", root_path, :count => 2)
      assert_select("a[href=?]", help_path)
      assert_select("a[href=?]", about_path)
      assert_select("a[href=?]", contact_path)
    end
  end

end
