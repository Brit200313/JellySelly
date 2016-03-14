require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "static page routing" do
    it "renders the homepage" do
      get :home
      response.should be_success
    end

    it "renders the about page" do
      get :about
      response.should be_success
    end
  end

end
