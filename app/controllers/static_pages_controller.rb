class StaticPagesController < ApplicationController

  def home
    @products = Shoppe::Product.root.ordered.includes(:product_categories, :variants)
    @products = @products.group_by(&:product_category)
  end

  def about
  end
end
