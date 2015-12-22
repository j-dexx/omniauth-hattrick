require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class Hattrick < OmniAuth::Strategies::OAuth
      option :name, 'hattrick'

      option :client_options, {
        site: 'https://chpp.hattrick.org',
        request_token_path: '/oauth/request_token.ashx',
        authorize_path: '/oauth/authorize.aspx',
        access_token_path: '/oauth/access_token.ashx',
      }

      uid { raw_info[:user_id] }

      info do
        raw_info
      end

      def raw_info
        @raw_info ||= OmniAuth::Hattrick::XmlParser.new(access_token.get('http://chpp.hattrick.org/chppxml.ashx?file=managercompendium&version=1.0').body).parse 
      end 
    end
  end
end
