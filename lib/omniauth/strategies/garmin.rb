require 'omniauth'
require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Garmin < OmniAuth::Strategies::OAuth

      option :name, "garmin"

      option :client_options, {
        scheme: :body,
        site: 'http://connectapitest.garmin.com',
        request_token_path: '/oauth-service-1.0/oauth/request_token',
        access_token_path: '/oauth-service-1.0/oauth/access_token',
        authorize_path: '/oauthConfirm'
      }

      uid do
        access_token.token
      end

      info do
        {
          name: access_token.token
        }
      end
    end
  end
end
