require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class Hattrick < OmniAuth::Strategies::OAuth
      option :name, 'hattrick'

      option :client_options, {
        site: 'https://chpp.hattrick.org',
        request_token_path: '/oauth/request_token.ashx',
        authorize_path: '/oauth/authorize.aspx',
        authenticate_path: '/oauth/authenticate.aspx',
        access_token_path: '/oauth/access_token.ashx',
        check_token_path: '/oauth/check_token.ashx',
        invalidate_token_path: '/oauth/invalidate_token.ashx'
      }

      uid{ request.params['user_id'] }
    end
  end
end
