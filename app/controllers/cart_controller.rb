class CartController < ApplicationController
  def view_cart
    @line_items = LineItem.all
  end

  def checkout
  end

  def add_to_cart
    byebug
    line_item = LineItem.new
    line_item.product_id = params[:product_id]
    line_item.quantity = params[:quantity]
    product = Product.find(params[:product_id])

    line_item.total = product.price * line_item.quantity
    line_item.save

    redirect_to view_cart_path
  end
end
