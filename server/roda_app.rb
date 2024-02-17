# Roda is a simple Rack-based framework with a flexible architecture based
# on the concept of a routing tree. Bridgetown uses it for its development
# server, but you can also run it in production for fast, dynamic applications.
#
# Learn more at: https://www.bridgetownrb.com/docs/routes

class RodaApp < Roda
  plugin :bridgetown_server
  plugin :http_auth

  # Some Roda configuration is handled in the `config/initializers.rb` file.
  # But you can also add additional Roda configuration here if needed.

  route do |r|
    http_auth { |_u, p| p == 'password' }
    # Load Roda routes in server/routes (and src/_routes via `bridgetown-routes`)
    r.bridgetown
  end
end
