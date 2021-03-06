class PaymentsController < ApplicationController

def create
  token = params[:stripeToken]
  @product = Product.find(params[:product_id])

  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => (@product.price*100).to_i,
      :currency => "eur",
      :source => token,
      :description => "New Order: #{params[:productName]} from #{params[:stripeEmail]}."
    )
  rescue Stripe::CardError => e
    # The card has been declined
  end

redirect_to product_path(@product)
  end

  end


