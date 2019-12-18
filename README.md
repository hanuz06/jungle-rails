# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails.

## Screenshot of front page

!["Screenshot of front page"](https://github.com/hanuz06/jungle-2-rails/blob/master/public/readme-pics/front-page.png?raw=true)

## Screenshot of item details

!["Screenshot of item details"](https://github.com/hanuz06/jungle-2-rails/blob/master/public/readme-pics/Item-details-page.png?raw=true)

## Screenshot of ordering products

!["Screenshot of front page"](https://github.com/hanuz06/jungle-2-rails/blob/master/public/readme-pics/ordering-page.png?raw=true)

## Screenshot of order summary

!["Screenshot of order summary"](https://github.com/hanuz06/jungle-2-rails/blob/master/public/readme-pics/order-summary.png?raw=true)

## Screenshot of admin dashboard
Admin access is protected

!["Screenshot of admin dashboard"](https://github.com/hanuz06/jungle-2-rails/blob/master/public/readme-pics/admin-dashboard.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe API
# jungle-rails.
