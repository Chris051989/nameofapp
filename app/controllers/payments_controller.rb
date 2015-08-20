def create
  token = params[:stripeToken]
  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => params[:productPrice],
      :currency => "usd",
      :source => token,
      :description => "New Order: #{params[:productName]} from #{params[:stripeEmail]}."
    )
  rescue Stripe::CardError => e
    # The card has been declined
  end

    @order = Order.new(:user_id => params[:userID], :product_id => params[:productID], :total => params[:productPrice])
    @order.save
end


