require 'spec_helper'

describe OmniAuth::Strategies::Hattrick do
  let(:request) { double('Request', :params => {}, :cookies => {}, :env => {}) }

  subject do
    args = ['key', 'secret', @options || {}].compact
    OmniAuth::Strategies::Hattrick.new(*args).tap do |strategy|
      allow(strategy).to receive(:request) {
        request
      }
    end
  end

  describe 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('hattrick')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://chpp.hattrick.org')
    end

    it 'should have the correct request token url' do
      expect(subject.options.client_options.request_token_path).to eq('/oauth/request_token.ashx')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_path).to eq('/oauth/authorize.aspx')
    end

    it 'should have correct access token url' do
      expect(subject.options.client_options.access_token_path).to eq('/oauth/access_token.ashx')
    end
  end


  describe 'info' do
    before do
      allow(subject).to receive(:raw_info).and_return(raw_info_hash)
    end

    it 'should return the username' do
      expect(subject.info[:username]).to eq(raw_info_hash[:username])
    end

    it 'should return the user_id' do
      expect(subject.info[:user_id]).to eq(raw_info_hash[:user_id])
    end
  end

  def raw_info_hash
    {
      username: 'Bob_Sunesson',
      user_id: '773204'
    }
  end
end
