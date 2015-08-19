if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_ebUzQjZagMHZlaJL2I5osbV1',
    :secret_key => 'sk_test_5BYWo5hJvYTxYttJIh6ZTi2E'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]


