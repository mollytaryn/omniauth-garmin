require 'spec_helper'

describe "OmniAuth::Strategies::Garmin" do
  subject do
    OmniAuth::Strategies::Garmin.new(nil, @options || {})
  end

  before :each do
    access_token = double('access_token')
    access_token.stub('token').and_return('abc123')
    subject.stub(:access_token).and_return(access_token)
  end

  context 'client options' do
    it 'has correct OAuth endpoint' do
      subject.options.client_options.site.should eq('http://connectapitest.garmin.com')
    end

    it 'has correct request token url' do
      subject.options.client_options.request_token_path.should eq('/oauth-service-1.0/oauth/request_token')
    end

    it 'has correct access token url' do
      subject.options.client_options.access_token_path.should eq('/oauth-service-1.0/oauth/access_token')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should eq('http://connecttest.garmin.com/oauthConfirm')
    end
  end

  context 'uid' do
    it 'returns the correct id from raw_info' do
      subject.uid.should eq('abc123')
    end
  end

  context 'info' do
    it 'returns the correct name from raw_info' do
      subject.info[:name].should eq("abc123")
    end
  end
end
