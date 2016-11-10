class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end

  def items_by_category
    @category = Category.find(params[:category_id])
    @products = Product.where(category_id: @category.id)
  end
end
