require 'rails_helper'

RSpec.describe OrdersController, type: :controller do

  before(:each) do
    @pc = create(:product_category)
    @product = build(:product)
    @product.product_categories << @pc
    @product.save!
    @sla = create(:stock_level_adjustment, item_id: @product.id)
    @product.stock_level_adjustments << @sla
    @product.save!
    @current_order = create(:order)
    @current_order.save!
  end

  describe "checkout for products" do
    it "checkouts a product" do
      get :checkout
      response.should be_success
    end
  end

  describe "paying for a product" do
    it "with an order, it sends the customer to the payment form" do
      get :payment
      response.should be_success
    end
  end

  # describe "confirming an order" do
  #   it "it confirms the current order" do
  #     post :confirmation
  #     response.should be_success
  #     expect(response).to redirect_to root_path
  #   end
  # end

  describe "deleting the deleting current order" do
    it "empties out the basket and redirects to the homepage" do
      post :destroy, current_order: @current_order
      expect(response).to redirect_to root_path
    end
  end

end
