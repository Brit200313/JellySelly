require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  before(:each) do
    @pc = create(:product_category)
    @product = build(:product)
    @product.product_categories << @pc
    @product.save!
    @sla = create(:stock_level_adjustment, item_id: @product.id)
    @product.stock_level_adjustments << @sla
    @product.save!
  end

  describe "show for products" do
    it "shows an product" do
      get :show, permalink: @product.permalink
      response.should be_success
    end
  end

  describe "buying a product" do
    it "adds a product to cart" do
      get :buy, permalink: @product.permalink
      expect(response).to redirect_to product_path(@product.permalink)
    end
  end

  describe "indexing products" do
    it "shows an index of products" do
      get :index
      response.should be_success
    end
  end

end
