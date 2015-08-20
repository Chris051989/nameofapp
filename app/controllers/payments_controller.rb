def create
  token = params[:stripeToken]
  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => params[:productPrice] # charge the amount according to the user ID
      :currency => "eur",
      :source => token,
      :description => params[:stripeEmail]
    )
  rescue Stripe::CardError => e
    # The card has been declined
  end

    @order = Order.new(:user_id => params[:userID], :product_id => params[:productID], :total => params[:productPrice])
    @order.save
  end
end

