class OrdersController < ApplicationController
  def show
    # @order = Order.find(params[:id])
    @order = current_user.orders.find(params[:id])
  end

  def create
    material = Material.find(params[:material_id])
    buying = Buying.find(params[:buying_id])
    order = Order.create!(material: material, buying: buying, material_sku: material.sku, amount: material.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: material.sku,
        # images: [material.photo_url],
        amount: material.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: material_buying_url(material, buying),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to material_buying_path(material, buying)
    # redirect_to material_buying_path(material, buying)
  end
end
