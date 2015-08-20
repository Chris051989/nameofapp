def create
  token = params[:stripeToken]
  @product = Product.find(params[product_id])

  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      :amount => @product.price*100],
      :currency => "eur",
      :source => token,
      :description => "New Order: #{params[:productName]} from #{params[:stripeEmail]}."
    )
  rescue Stripe::CardError => e
    # The card has been declined
  end

    @order = Order.new(:user_id => params[:userID], :product_id => params[:productID], :total => params[:productPrice])
    @order.save
end


