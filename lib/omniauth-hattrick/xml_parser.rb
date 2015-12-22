require 'nokogiri'

module OmniAuth
  module Hattrick
    class XmlParser

      attr_reader :xml

      def initialize(xml)
        @doc = Nokogiri::XML(xml) 
        @manager_details = {}
      end

      def parse
        add_user_id
        add_username
        manager_details
      end

      private

      attr_accessor :manager_details
      attr_reader :doc

      def add_user_id
        manager_details[:user_id] = doc.xpath('//UserId').text
      end

      def add_username
        manager_details[:username] = doc.xpath('//Loginname').text
      end

    end
  end
end
